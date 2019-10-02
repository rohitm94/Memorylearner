#include <iostream>
#include <immintrin.h>
#include <omp.h>
#include <chrono>

using namespace std;
using namespace chrono;


int main(int argc, char* argv[])
{

	int loop_count = 100000;
	__m256i **inputs, **copies;

	chrono::time_point<system_clock> clock_start, clock_end;
	chrono::duration<double> elapsed_time;

	int thread_count, thread_id;

	long data_size = atoi(argv[1]);					//input size is considered to taken in KBytes

	long data_size_in_bytes = data_size * 1024;			//convertion into bytes 

	long data_size_in_bits = 8 * data_size_in_bytes;	        //convertion into bits

	long num_of_feeds = data_size_in_bits / 256;		        //Finding number of 256-bit data that can be feeded with give input size

#pragma omp parallel
	{
		thread_count = omp_get_num_threads();
	}

	inputs = (__m256i * *)malloc(sizeof(__m256i*) * thread_count);
	copies = (__m256i * *)malloc(sizeof(__m256i*) * thread_count);

	for (int i = 0; i < thread_count; i++)
	{
		inputs[i] = (__m256i*)_mm_malloc(sizeof(__m256i) * (num_of_feeds), 256);
		copies[i] = (__m256i*)_mm_malloc(sizeof(__m256i) * (num_of_feeds), 256);
	}


#pragma omp parallel default(shared) private(thread_id)
	{
		thread_id = omp_get_thread_num();

		for (int i = 0; i < num_of_feeds; i++)
		{
			inputs[thread_id][i] = _mm256_set1_epi8(1);
		}
	}

	__m256i sum_res = _mm256_set1_epi8(0);
	__m256i sum_res1 = _mm256_set1_epi8(0);
	__m256i sum_res2 = _mm256_set1_epi8(0);
	__m256i sum_res3 = _mm256_set1_epi8(0);
	__m256i sum_res4 = _mm256_set1_epi8(0);
	__m256i sum_res5 = _mm256_set1_epi8(0);
	__m256i sum_res6 = _mm256_set1_epi8(0);
	__m256i sum_res7 = _mm256_set1_epi8(0);
	
	
	double run_time = 0;

	//parallel running to find memory bandwidth while performing read operations

	clock_start = system_clock::now();
#pragma omp parallel private(thread_id,sum_res,sum_res1,sum_res2,sum_res3,sum_res4,sum_res5,sum_res6,sum_res7)
	{
		thread_id = omp_get_thread_num();

		auto local_input = inputs[thread_id];


		for (int i = 0; i < loop_count; i++)
		{
			for (int j = 0; j < num_of_feeds - (num_of_feeds % 8); j = j + 8)
			{
				sum_res = _mm256_add_epi8(local_input[j], sum_res);
				sum_res1 = _mm256_add_epi8(local_input[j + 1], sum_res1);
				sum_res2 = _mm256_add_epi8(local_input[j + 2], sum_res2);
				sum_res3 = _mm256_add_epi8(local_input[j + 3], sum_res3);
				sum_res4 = _mm256_add_epi8(local_input[j + 4], sum_res4);
				sum_res5 = _mm256_add_epi8(local_input[j + 5], sum_res5);
				sum_res6 = _mm256_add_epi8(local_input[j + 6], sum_res6);
				sum_res7 = _mm256_add_epi8(local_input[j + 7], sum_res7);
				asm("");
			}
			if (i == loop_count - 1) {
				cout << sum_res7[0] << "\t sum of last sum vector" << endl;
			}

		}

	}

	clock_end = system_clock::now();
	elapsed_time = clock_end - clock_start;
	run_time = elapsed_time.count();


	double read_bw_bits_per_sec = (num_of_feeds * thread_count * 256 * loop_count) / (1024 * 1024 * 1024 * run_time);	        //Bandwidth of read in Giga bits/second

	// Bandwidth of read in Giga Bytes per second
	// dividing by 8 to convert into bytes/sec
	double read_bw_bytes_per_sec = read_bw_bits_per_sec / 8;

	run_time = 0;
	//parallel running to find memory bandwidth while performing write operations

	
#pragma omp parallel private(thread_id) reduction(max:run_time)
	{
		thread_id = omp_get_thread_num();

		auto local_input = inputs[thread_id];


		for (int i = 0; i < loop_count; i++)
		{
			if (i == loop_count / 2) {
				clock_start = system_clock::now();
			}
			for (int j = 0; j < num_of_feeds - (num_of_feeds % 8); j = j + 8)
			{
				local_input[j] = _mm256_set1_epi8(0);
				local_input[j + 1] = _mm256_set1_epi8(0);
				local_input[j + 2] = _mm256_set1_epi8(0);
				local_input[j + 3] = _mm256_set1_epi8(0);
				local_input[j + 4] = _mm256_set1_epi8(0);
				local_input[j + 5] = _mm256_set1_epi8(0);
				local_input[j + 6] = _mm256_set1_epi8(0);
				local_input[j + 7] = _mm256_set1_epi8(0);
				asm("");
			}
			if (i == loop_count / 2) {
				clock_end = system_clock::now();
			}
			elapsed_time = clock_end - clock_start;
			run_time = elapsed_time.count();

		}
		

	}

	double write_bw_bits_per_sec = (num_of_feeds * thread_count * 256 ) / (1024 * 1024 * 1024 * run_time);	        //Bandwidth of write in Giga bits/second

	// Bandwidth of write in Giga Bytes per second
	// dividing by 8 to convert into bytes/sec
	double write_bw_bytes_per_sec = write_bw_bits_per_sec / 8;
	
	
	run_time = 0;
	//parallel running to find memory bandwidth while performing write operations


#pragma omp parallel private(thread_id) reduction(max:run_time)
	{
		thread_id = omp_get_thread_num();

		auto local_input = inputs[thread_id];


		for (int i = 0; i < loop_count; i++)
		{
			if (i == loop_count - 1) {
				clock_start = system_clock::now();
			}	
			for (int j = 0; j < num_of_feeds ; j++)
			{
				__m256i temp_var = _mm256_load_si256((const __m256i *) &local_input[j]);
				_mm256_store_si256((__m256i *)&copies[thread_id][j], temp_var);
				asm("");
			}
			if (i == loop_count - 1) {
				clock_end = system_clock::now();
			}
			elapsed_time = clock_end - clock_start;
			run_time = elapsed_time.count();

		}

	}

	double readwrite_bw_bits_per_sec = (num_of_feeds * thread_count * 256 ) / (1024 * 1024 * 1024 * run_time);	        //Bandwidth of read-write in Giga bits/second
		
	// Bandwidth of read-write in Giga Bytes per second
	// dividing by 8 to convert into bytes/sec
	double readwrite_bw_bytes_per_sec = readwrite_bw_bits_per_sec / 8;


	cout << atoi(argv[1]) << "\t" << read_bw_bytes_per_sec << "\t\t" << write_bw_bytes_per_sec<< "\t\t" << readwrite_bw_bytes_per_sec;

	_mm_free(inputs);
	_mm_free(copies);

	cout << endl;
	return 0;
}

#!/bin/sh

array=(1 2 3 4 5 6 7 8 9 10 20 32 40 50 64 70 80 90 128 256 300 400 500 512 768 896 1024 1536 2048 3072 3584 4096 4608 5120 5632 6656 7680 8192 10000 16384 32768 65536 102400)
rm -rf bw_plot_final.txt runresult_final.txt

for size in ${array[@]};
do
        echo "performing $size " >> runresult_final.txt
        ./mem_bw_final $size  >> bw_plot_final.txt
done
echo "compilation completed successfully">> runresult_fri.txt

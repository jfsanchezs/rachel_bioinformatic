#!usr/bir/env bash
#Script to trim fastqs pair  w trimmomatic

trimmomatic PE \
~/data/untrimmed_fastq/SRR2584863_1.fastq.gz ~/data/untrimmed_fastq/SRR2584863_2.fastq.gz  \
~/data/trimmed_fastq/SRR2584863_1.trim.fastq.gz ~/data/trimmed_fastq/SRR284863_1.untrim.fastq.gz  \
~/data/trimmed_fastq/SRR2584863_2.trim.fastq.gz ~/data/trimmed_fastq/SRR284863_2.untrim.fastq.gz  \
SLIDINGWINDOW:4:20  #\
#ILLUMINACLIP:~/.miniconda3/pkgs/trimmomatic-0.38-0/share/trimmomatic-0.38-0/adapters/NexteraPE-PE.fa


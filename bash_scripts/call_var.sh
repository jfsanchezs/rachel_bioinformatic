#!/usr/bin/env bash
#take sasm from alignment and call variants

#convert sam to bam
samtools view -S -b ~/results/alignment/SRR2584863.sam > ~/results/alignment/SRR2584863.bam
samtools sort -o ~/results/alignment/SRR2584863.sorted.bam

#call variants
bcftools mpileup -O b -o SRR258463.bcf \
-f ~/data/ref_genome/GCA_000017985.1_ASM1798v1_genomic.fna \
~/results/alignment/SRR2584863.sorted.bam

bcftools call --ploidy 1 -m -v -o ~/results/SRR258463_variants.bcf SRR258463.bcf ~/results/SRR258463.bcf
vcfutils.pl varFilter ~/results/SRR258463_variants.bcf > results/SRR258463_final_variants.vcf
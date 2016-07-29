#!/bin/bash
# Job name:
#SBATCH --job-name=trimmomatic
#
# Project:
#SBATCH --account=cees
#
# Wall clock limit:
#SBATCH --time=40:00:00
#
# Max memory usage per task:
#SBATCH --mem-per-cpu=4G
#
# Number of tasks (cores):
#SBATCH --ntasks=12

## Set up job environment:

cd /usit/abel/u1/mortema/fastq

for D in *R1*gz

do

files=$(echo $D | cut -d'_' -f1-3)

echo "Processing $f"

java -jar /usit/abel/u1/mortema/software/Trimmomatic-0.36//trimmomatic-0.36.jar PE -threads 7 "$files"_R1_001.fastq.gz "$files"_R2_001.fastq.gz "$files"_R1_001_pass.fastq "$files"_R1_001_fail.fastq "$files"_R2_001_pass.fastq "$files"_R2_001_fail.fastq ILLUMINACLIP:/usit/abel/u1/mortema/software/Trimmomatic-0.36/adapters/TruSeq3-PE.fa:2:30:10 LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36


/usit/abel/u1/mortema/software/pigz-2.3.3/pigz "$files"_R1_001_pass.fastq
/usit/abel/u1/mortema/software/pigz-2.3.3/pigz "$files"_R2_001_pass.fastq

rm *fail.fastq
rm *pass.fastq


done






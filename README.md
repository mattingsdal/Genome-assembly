# Flow
  1. Assemble long reads using canu to generate genome fasta file
  2. Align short and long data using bwa
  3. Refine the genome fasta using pilon with bam files
  4. Re-align short and long data using bwa to final genome fasta file


# Assembling the genome
canu code.

# Aligning short and long read data with speedseq and bwa

  for D in *R1*gz

  do

  filename=$(echo $D | cut -f 1 -d .)
  name=$(echo $D | cut -f 1 -d _)
  id=$(echo $D  | cut -f 2 -d _)
  lane=$(echo $D  | cut -f 3 -d _)
  rgid=$(echo $D | cut -f 1 -d .)

   speedseq align -R "@RG\tID:${name}\tSM:${name}\tLB:HiSeq" ~/genome/symphodus_melops.fasta ~/nobackup/fastq/${name}_${id}_${lane}_R1_001.fastq.gz ~/nobackup/fastq/${name}_${id}_${lane}_R1_002.fastq.gz  -t 4

   done



# Refine the genome using pilon
  Here we will take advantage of the aligned and indexed short read data using --frags *bams  and aligned (indexed long reads using --jumps *bams. 
  pilon --genome genome.fasta [--frags frags.bam] [--jumps jumps.bam] [--unpaired unpaired.bam]

#Re-align short and long data using bwa
bwa code



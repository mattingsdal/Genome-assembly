# Flow
  1. Assemble long reads using canu to generate genome fasta file
  2. Align short and long data using bwa
  3. Refine the genome fasta using pilon
  4. Re-align short and long data using bwa to final genome fasta file


# Assembling the genome
canu code.

# Aligning short and long read data with bwa
bwa code

# Refine the genome using pilon
  Here we will take advantage of the aligned and indexed short read data using --frags *bams  and aligned (indexed long reads using --jumps *bams. 
  pilon --genome genome.fasta [--frags frags.bam] [--jumps jumps.bam] [--unpaired unpaired.bam]

#Re-align short and long data using bwa
bwa code



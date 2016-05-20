# Flow
  1. Assemble long reads using canu to generate gneome fasta file
  2. Align short and long data using bwa
  3. Refine the genome using pilon
  4. Re-align short and long data using bwa to final genome
  5. Run Freebayes and Platypus to call variations
  6. QC the variants


# Assembling the genome
canu code.
We are assembleling a genome with fair coverage ~x30, and need 

# Refine the genome using pilon
Here we will take advantage of the aligned and indexed short read data using --frags *bams  and aligned (indexed long reads using --jumps *bams. 
pilon --genome genome.fasta [--frags frags.bam] [--jumps jumps.bam] [--unpaired unpaired.bam]

# Aligning .fastq reads to genome
bwa-mem code

# SNPs and Indel detection
Freebayes & Platypus code

# QC of SNPs
vcftools

# Population structure
fastSTRUCTURE and PLINK code


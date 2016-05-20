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


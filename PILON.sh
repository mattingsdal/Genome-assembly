module load java
nohup java -Xmx600G -jar /usit/abel/u1/mortema/software/pilon-1.21/pilon-1.21.jar --genome /usit/abel/u1/mortema/genome/corkwing.contigs.fasta \
--frags HG5KLBCXY_Smelops_GATCAG_L001.bam --frags HG5KLBCXY_Smelops_GATCAG_L002.bam --frags HG7GVBCXY_Smelops_GATCAG_L001.bam --frags HG7GVBCXY_Smelops_GATCAG_L002.bam \
--verbose --tracks --changes --vcf --fix all --diploid --output Pilon_1 1> pilonRun.out 2> pilonRun.err &


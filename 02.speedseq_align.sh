
for D in *R1*gz

        do

        filename=$(echo $D | cut -f 1 -d .)
        name=$(echo $D | cut -f 1 -d _)
        id=$(echo $D  | cut -f 2 -d _)
        lane=$(echo $D  | cut -f 3 -d _)
        rgid=$(echo $D | cut -f 1 -d .)

        speedseq align -R "@RG\tID:${name}\tSM:${name}\tLB:HiSeq" ~/genome/symphodus_melops.fasta ~/nobackup/fastq/${name}_${id}_${lane}_R1_001.fastq.gz ~/nobackup/fastq/${name}_${id}_${lane}_R1_002.fastq.gz  -t 4

 done

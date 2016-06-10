
for D in *bam

        do
 
                # Extract the discordant paired-end alignments.
                samtools view -@ 2 -b -F 1294 $D> $D.discordants.unsorted.bam

                # Extract the split-read alignments
                samtools view -@ 2 -h $D \
                        | /usr/local/share/bcbio/anaconda/share/lumpy-sv-0.2.12-1/scripts/extractSplitReads_BwaMem -i stdin \
                        | samtools view -Sb - \
                        > $D.splitters.unsorted.bam
        
                # Sort both alignments
                samtools sort $D.discordants.unsorted.bam -o $D.discordants.sorted.bam
                samtools sort $D.splitters.unsorted.bam -o $D.splitters.sorted.bam

                rm $D.discordants.unsorted.bam
                rm $D.splitters.unsorted.bam

                lumpyexpress
                -B $D \
                -S $D.splitters.sorted.bam \
                -D $D.discordants.sorted.bam \
                -o $D_LUMPY.vcf
done


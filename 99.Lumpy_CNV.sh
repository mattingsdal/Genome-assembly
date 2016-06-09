
module load samtools

      for D in *bam
        do
        # Extract the discordant paired-end alignments.
        samtools view -b -F 1294 $D > $D.discordants.unsorted.bam
        # Extract the split-read alignments
        samtools view -h $D \
        | scripts/extractSplitReads_BwaMem -i stdin \
        | samtools view -Sb - \
        > $D.splitters.unsorted.bam
        # Sort both alignments
        samtools sort $D.discordants.unsorted.bam $D.discordants
        samtools sort $D.splitters.unsorted.bam $D.splitters
      done

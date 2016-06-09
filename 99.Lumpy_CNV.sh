
      for D in *bam

        do


        # Extract the discordant paired-end alignments.
        samtools view -b -F 1294 $D.bam > $D.discordants.unsorted.bam

        # Extract the split-read alignments
        samtools view -h $D \
        | scripts/extractSplitReads_BwaMem -i stdin \
        | samtools view -Sb - \
        > $D.splitters.unsorted.bam

        # Sort both alignments
        samtools sort sample.discordants.unsorted.bam sample.discordants
        samtools sort sample.splitters.unsorted.bam sample.splitters
      done

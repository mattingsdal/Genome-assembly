
module load samtools

      for D in *bam
        do
        # Extract the discordant paired-end alignments.
        samtools view -b -F 1294 $D > $D.discordants.unsorted.bam
        # Extract the split-read alignments. make sure to specify path of extractsplitreads
        samtools view -h $D \
        | /usr/local/share/bcbio/anaconda/share/lumpy-sv-0.2.12-1/scripts/extractSplitReads_BwaMem -i stdin \
        | samtools view -Sb - \
        > $D.splitters.unsorted.bam
        # Sort both alignments
        samtools sort $D.discordants.unsorted.bam $D.discordants
        samtools sort $D.splitters.unsorted.bam $D.splitters
      done

# create descripteve statistics for a fasta assembly

fastafile=symphodus_melops.fasta

# RepeatMasker quick search using 4 CPU's at the lineage "teleostei"
RepeatMasker -species=teleostei $fastafile -q -pa 4

#contig length, gc content etc
infoseq -auto -only -accession -length -pgc $fastafile



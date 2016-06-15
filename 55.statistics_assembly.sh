# create descripteve statistics for a fasta assembly

fastafile=symphodus_melops.fasta

# RepeatMasker quick search using 4 CPU's at the lineage "teleostei"
~/software/maker/exe/RepeatMasker/RepeatMasker -species=teleostei $fastafile -q -pa 4

#contig length, gc content etc
python ~/software/quast-4.0/quast.py $fastafile -o quast_out -t 4



# create descripteve statistics for a fasta assembly

fastafile=symphodus_melops.fasta

# RepeatMasker quick search using 4 CPU's at the lineage "teleostei"
~/software/maker/exe/RepeatMasker/RepeatMasker -species=teleostei $fastafile -q -pa 4

#contig length, gc content etc
python ~/software/quast-4.0/quast.py $fastafile -o quast_out -t 4

# CpG islands (parameters are from TJ alogithmn from PUBMEDID:18483567)
cpgplot symphodus_melops.fasta -window 200 -minlen 500 -minoe 0.65 -minpc 55 -outfile $fastafile.gc -outfeat $fastafile.gc.gff -noplot


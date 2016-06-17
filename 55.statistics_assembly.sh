# create descripteve statistics for a fasta assembly

fastafile=symphodus_melops.fasta

# RepeatMasker quick search using 4 CPU's at the lineage "teleostei"
~/software/maker/exe/RepeatMasker/RepeatMasker -species=teleostei $fastafile -q -pa 4

#contig length, gc content etc
python ~/software/quast-4.0/quast.py $fastafile -o quast_out -t 4

# CpG islands (parameters are from TJ alogithmn from PubMed ID:18483567) use repeatmasked seqience
# cpgplot symphodus_melops.fasta -window 200 -minlen 500 -minoe 0.65 -minpc 55 -outfile $fastafile.gc -outfeat $fastafile.gc.gff -noplot

# CpG island prediction TJ with parameters like PubMed ID:18483567
perl CpGi130.pl $fastafile GCC=55 OE=65 LENGTH=500

#RepeatModeler on masked genome sequence
~/software/RepeatModeler/BuildDatabase -engine ncbi -name "ballan" ../ballan.fasta.masked
~/software/RepeatModeler/RepeatModeler -engine ncbi -pa 2 -database ballan >& RepeatModeler.out &

~/software/RepeatModeler/BuildDatabase -engine ncbi -name "corkwing" ../symphodus_melops.fasta.masked
~/software/RepeatModeler/RepeatModeler -engine ncbi -pa 2 -database corkwing >& RepeatModeler.out &

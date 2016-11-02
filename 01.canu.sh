# example x20 yeast data

/usit/abel/u1/mortema/software/canu/Linux-amd64/bin/canu \
 -p asm -d yeast \
 genomeSize=12.1m \
 corMhapSensitivity=high corMinCoverage=2 errorRate=0.035 minOverlapLength=499 corMaxEvidenceErate=0.3 \
-java="/usr/bin/java" \
-pacbio-raw yeast.20x.fastq.gz \
-gridOptions='--account=cees --time=24:00:00'

# testing on 1 fastq file, actual data
~/software/canu/Linux-amd64/bin/canu -p corkwing\
-d /usit/abel/u1/mortema/pacbio \
genomeSize=600000000 \
-pacbio-raw *fastq.gz \
gnuplot=/usit/abel/u1/mortema/bin/bin/gnuplot \
-gridOptions='--account=cees --time=24:00:00'

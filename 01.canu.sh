# example x20 yeast data

/usit/abel/u1/mortema/software/canu/Linux-amd64/bin/canu \
 -p asm -d yeast \
 genomeSize=12.1m \
 corMhapSensitivity=high corMinCoverage=2 errorRate=0.035 minOverlapLength=499 corMaxEvidenceErate=0.3 \
-java="/usr/bin/java" \
-pacbio-raw yeast.20x.fastq.gz \
-gridOptions='--account=cees --time=24:00:00'

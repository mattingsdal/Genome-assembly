ssh abel

ssh cod7

cd pacbio

# run2
nice -n 5 nohup ~/software/canu/Linux-amd64/bin/canu -p corkwing -d /usit/abel/u1/mortema/pacbio/run2 maxMemory=384 maxThreads=32 ovsConcurrency=8 ovbConcurrency=8 -useGrid=false genomeSize=600000000 -pacbio-raw *fastq gnuplot=/usit/abel/u1/mortema/bin/bin/gnuplot &

# run3
nice -n 5 nohup ~/software/canu/Linux-amd64/bin/canu -p corkwing -d /usit/abel/u1/mortema/pacbio/run3 corMhapSensitivity=high corMinCoverage=0 maxMemory=384 maxThreads=32 ovsConcurrency=8 ovbConcurrency=8 -useGrid=false genomeSize=600000000 -pacbio-raw *fastq gnuplot=/usit/abel/u1/mortema/bin/bin/gnuplot &


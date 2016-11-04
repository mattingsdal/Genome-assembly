ssh abel

ssh cod7

cd pacbio

nohup ~/software/canu/Linux-amd64/bin/canu -p corkwing -d /usit/abel/u1/mortema/pacbio/run1 -maxThreads=8 -useGrid=false genomeSize=600000000 -pacbio-raw *fastq gnuplot=/usit/abel/u1/mortema/bin/bin/gnuplot &



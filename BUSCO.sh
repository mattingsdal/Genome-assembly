module load augustus/3.0.2
module load blast+
module load hmmer
module load busco

export AUGUSTUS_CONFIG_PATH="/usit/abel/u1/mortema/genome/config"

python3 /cluster/software/VERSIONS/busco/v2.0/busco.py -m genome -i mini.fasta -o corkwing_run2 -l actinopterygii_odb9 -sp zebrafish

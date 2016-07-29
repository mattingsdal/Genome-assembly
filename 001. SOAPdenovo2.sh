#!/bin/bash
# Job name:
#SBATCH --job-name=soapdenovo2
#
# Project:
#SBATCH --account=cees
#
# Wall clock limit:
#SBATCH --time=40:00:00
#
# Max memory usage per task:
#SBATCH --mem-per-cpu=2G
#
# Number of tasks (cores):
#SBATCH --ntasks=14

## Set up job environment:

module load soapdenovo2

SOAPdenovo-63mer all -p 14 -s /usit/abel/u1/mortema/nobackup/fastq/config_file -K 63 -R -w -o K63_prefix 1>k63.log 2>k63.err

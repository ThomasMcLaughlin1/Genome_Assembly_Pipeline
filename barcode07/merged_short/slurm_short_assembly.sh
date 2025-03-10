#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
#SBATCH --mem=300g
#SBATCH --time=48:00:00
#SBATCH --job-name=short_assembly
#SBATCH --output=/share/BioinfMSc/rotation1/Group3/barcode07/merged_short/logs/slurm-%x-%j.out
#SBATCH --error=/share/BioinfMSc/rotation1/Group3/barcode07/merged_short/logs/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

#load env variables 
source $HOME/.bash_profile

conda activate Unicycler_env

cd /share/BioinfMSc/rotation1/Group3/barcode07/merged_short

#Running unicyler 
unicycler -1 R1_short_reads.fastq.gz -2 R2_short_reads.fastq.gz -o assembly

conda deactivate

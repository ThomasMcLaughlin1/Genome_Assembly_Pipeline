#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=8
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=300g
#SBATCH --time=48:00:00
#SBATCH --job-name=long_assembly
#SBATCH --output=/share/BioinfMSc/rotation1/Group3/barcode07/merged_long/logs/slurm-%x-%j.out
#SBATCH --error=/share/BioinfMSc/rotation1/Group3/barcode07/merged_long/logs/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

#loading env variables
source $HOME/.bash_profile

conda activate Unicycler_env

cd /share/BioinfMSc/rotation1/Group3/barcode07/merged_long

#Running unicycler
unicycler -l merged_pass.fastq.gz -o pass_assembly

conda deactivate 

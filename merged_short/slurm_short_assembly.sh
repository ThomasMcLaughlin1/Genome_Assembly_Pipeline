#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=48
#SBATCH --mem=300g
#SBATCH --time=48:00:00
#SBATCH --job-name=short_assembly
#SBATCH --output=/share/BioinfMSc/rotation1/Group3/merged_short/logs/slurm-%x-%j.out
#SBATCH --error=/share/BioinfMSc/rotation1/Group3/merged_short/logs/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

#loading environment variables
source $HOME/.bash_profile

#Activate environment
conda activate Unicycler_env

#Running unicyclyer on both foward and reverse fastq files
cd /share/BioinfMSc/rotation1/Group3/merged_short
unicycler -1 R1_shortreads.fastq.gz -2 R2_shortreads.fastq.gz -o assembly_v4

conda deactivate

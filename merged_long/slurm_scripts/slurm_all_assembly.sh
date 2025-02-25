#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=12
#SBATCH --mem=300g
#SBATCH --time=48:00:00
#SBATCH --job-name=long_assembly_all
#SBATCH --output=/share/BioinfMSc/rotation1/Group3/merged_long/logs/slurm-%x-%j.out
#SBATCH --error=/share/BioinfMSc/rotation1/Group3/merged_long/logs/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

#loading enviroment variables 
source $HOME/.bash_profile

#Activate enviroment
conda activate Unicycler_env

#change to laoction of file 
cd /share/BioinfMSc/rotation1/Group3/merged_long

#Running unicyclyer on the merged all fastq
unicycler -l merged_all.fastq.gz -o all_assembly

conda deactivate 

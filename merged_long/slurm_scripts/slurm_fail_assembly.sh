#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=300g
#SBATCH --time=48:00:00
#SBATCH --job-name=long_assembly_fail
#SBATCH --output=/share/BioinfMSc/rotation1/Group3/merged_long/logs/slurm-%x-%j.out
#SBATCH --error=/share/BioinfMSc/rotation1/Group3/merged_long/logs/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

#loading enviroment variables
source $HOME/.bash_profile


#Activate enviroment
conda activate Unicycler_env

#chnage to location of file 
cd /share/BioinfMSc/rotation1/Group3/merged_long/fastq_fail/

#Running unicyler on the merged fail fastq
unicycler -l merged_fail.fastq.gz -o fail_assembly

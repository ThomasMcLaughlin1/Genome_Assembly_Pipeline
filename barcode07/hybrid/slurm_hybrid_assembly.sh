#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=300g
#SBATCH --time=48:00:00
#SBATCH --job-name=hybrid_assembly
#SBATCH --output=/share/BioinfMSc/rotation1/Group3/barcode07/hybrid/logs/slurm-%x-%j.out
#SBATCH --error=/share/BioinfMSc/rotation1/Group3/barcode07/hybrid/logs/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

#loading en variables
source $HOME/.bash_profile

#activate env
conda activate Unicycler_env

cd /share/BioinfMSc/rotation1/Group3/barcode07/hybrid

#Run unicycler 
unicycler -1 R1_short_reads.fastq.gz -2 R2_short_reads.fastq.gz -l merged_pass.fastq.gz -o assembly_hybrid

conda deactivate

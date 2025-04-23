#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=300g
#SBATCH --time=48:00:00
#SBATCH --job-name=pass_annotation
#SBATCH --output=/share/BioinfMSc/rotation1/Group3/prokka_annotation/logs/slurm-%x-%j.out
#SBATCH --error=/share/BioinfMSc/rotation1/Group3/prokka_annotation/logs/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

#loading env variables
source $HOME/.bash_profile

#activate env
conda activate prokka

cd /share/BioinfMSc/rotation1/Group3/merged_long/fastq_all/all_assembly

#Running prokka on the merged all assembly
prokka --outdir /share/BioinfMSc/rotation1/Group3/prokka_annotation/all_annotation1 assembly.fasta

conda deactivate

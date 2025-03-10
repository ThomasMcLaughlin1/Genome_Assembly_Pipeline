#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=100g
#SBATCH --time=48:00:00
#SBATCH --job-name=pass_annotation
#SBATCH --output=/share/BioinfMSc/rotation1/Group3/prokka_annotation/logs/slurm-%x-%j.out
#SBATCH --error=/share/BioinfMSc/rotation1/Group3/prokka_annotation/logs/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

source $HOME/.bash_profile

conda activate prokka

cd /share/BioinfMSc/rotation1/Group3/merged_short/assembly/
prokka --outdir /share/BioinfMSc/rotation1/Group3/prokka_annotation/short_annotation assembly_short.fasta

conda deactivate

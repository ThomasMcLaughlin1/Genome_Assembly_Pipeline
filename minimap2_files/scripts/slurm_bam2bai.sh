#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=300g
#SBATCH --time=24:00:00
#SBATCH --job-name=minimap2_hybrid
#SBATCH --output=/share/BioinfMSc/rotation1/Group3/minimap2_files/logs/slurm-%x-%j.out
#SBATCH --error=/share/BioinfMSc/rotation1/Group3/minimap2_files/logs/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

source $HOME/.bash_profile

conda activate samtools

samtools index /share/BioinfMSc/rotation1/Group3/minimap2_files/scripts/passreads_reference_sorted.bam

conda deactivate 

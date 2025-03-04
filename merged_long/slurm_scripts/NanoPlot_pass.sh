#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=5g
#SBATCH --time=00:10:00
#SBATCH --job-name=NanoPlot_all_merge
#SBATCH --output=/gpfs01/share/BioinfMSc/rotation1/Group3/slurm-%x-%j.out
#SBATCH --error=/gpfs01/share/BioinfMSc/rotation1/Group3/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

#loading enviroment variables
source $HOME/.bash_profile

#activate environment
conda activate nanoplot_env

#Running nanoplot on pass fastq files
NanoPlot --fastq /share/BioinfMSc/rotation1/Group3/merged_pass.fastq.gz -o /$conda deactivate

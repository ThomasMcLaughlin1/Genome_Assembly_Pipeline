#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=32
#SBATCH --mem=300g
#SBATCH --time=48:00:00
#SBATCH --job-name=pass_annotation
#SBATCH --output=/share/BioinfMSc/rotation1/Group3/Genovi/logs/slurm-%x-%j.out
#SBATCH --error=/share/BioinfMSc/rotation1/Group3/Genovi/logs/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

source $HOME/.bash_profile

conda activate genovi

cd /share/BioinfMSc/rotation1/Group3/Genovi 

genovi -i /share/BioinfMSc/rotation1/Group3/prokka_annotation/fail_annotation1/PROKKA_02072025.gbk -s complete

conda deactivate

#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1                 
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8         
#SBATCH --mem=100g
#SBATCH --time=48:00:00
#SBATCH --job-name=bwa_bamconv
#SBATCH --output=/share/BioinfMSc/rotation1/Group3/BWA/logs/slurm-%x-%j.out
#SBATCH --error=/share/BioinfMSc/rotation1/Group3/BWA/logs/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

source $HOME/.bash_profile

conda activate samtools

cd /share/BioinfMSc/rotation1/Group3/BWA

samtools view -bS aln-pe.sam > aln-pe.bam
samtools sort aln-pe.bam -o aln-pe.sorted.bam
samtools index aln-pe.sorted.bam

conda deactivate 

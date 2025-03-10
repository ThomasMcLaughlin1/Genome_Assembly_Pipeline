#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=8
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=100g
#SBATCH --time=48:00:00
#SBATCH --job-name=bwa_samtobamjy
#SBATCH --output=/share/BioinfMSc/rotation1/Group3/BWA/slurm-%x-%j.out
#SBATCH --error=/share/BioinfMSc/rotation1/Group3/BWA/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

source $HOME/.bash_profile

conda activate BWA

cd /share/BioinfMSc/rotation1/Group3/BWA

bwa index merged_HaloferaxVolcanii_reference.fasta
bwa mem merged_HaloferaxVolcanii_reference.fasta R1_shortreads.fastq.gz R2_shortreads.fastq.gz | gzip -3 > aln-pe.sam.gz

conda deactivate 


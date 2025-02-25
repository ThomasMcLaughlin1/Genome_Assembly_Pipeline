#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=5g
#SBATCH --time=00:50:00
#SBATCH --job-name=R1_merger
#SBATCH --output=/share/BioinfMSc/rotation1/Group3/merged_short/shortR1merger-%x-%j.out
#SBATCH --error=/share/BioinfMSc/rotation1/Group3/merged_short/shortR1merger-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

# Merge R1 illumina files
cat /share/BioinfMSc/Matt_resources/short_reads/Fastq/*_S3*_R1*.fastq.gz > /share/BioinfMSc/rotation1/Group3/merged_short/R1_shortreads.fastq.gz

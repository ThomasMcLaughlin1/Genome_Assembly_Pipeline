#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=5g
#SBATCH --time=00:10:00
#SBATCH --job-name=fail_merge
#SBATCH --output=/gpfs01/share/BioinfMSc/rotation1/Group3/slurm-%x-%j.out
#SBATCH --error=/gpfs01/share/BioinfMSc/rotation1/Group3/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

cat /share/BioinfMSc/Matt_resources/long_reads/fastq_fail/barcode03/*.fastq.gz > /share/BioinfMSc/rotation1/Group3/merged_long/fastq_fail/merged_fail.fastq.gz

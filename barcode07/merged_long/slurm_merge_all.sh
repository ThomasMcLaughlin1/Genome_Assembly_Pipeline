#!/bin/bash

#SBATCH --partition=defq
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=5g
#SBATCH --time=00:10:00
#SBATCH --job-name=merge_pass
#SBATCH --output=/gpfs01/share/BioinfMSc/rotation1/Group3/barcode07/logs/slurm-%x-%j.out
#SBATCH --error=/gpfs01/share/BioinfMSc/rotation1/Group3/barcode07/logs/slurm-%x-%j.err
#SBATCH --mail-type=ALL
#SBATCH --mail-user=pcytm7@exmail.nottingham.ac.uk

cat /share/BioinfMSc/rotation1/Group3/barcode07/merged_pass.fastq.gz merged_fastq.gz > /share/BioinfMSc/rotation1/Group3/barcode07/merged_all.fastq.gz

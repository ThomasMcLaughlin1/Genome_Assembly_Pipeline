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


#merging the pass and fail nanopore reads to create a merged_all fastq output file
cat /share/BioinfMSc/rotation1/Group3/merged_fail.fastq.gz merged_pass.fastq.gz > /share/BioinfMSc/rotation1/Group3/merged_all.fastq.gz

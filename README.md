#  Description - Genome Assembly Pipeline 

A series of shell scripts designed for genome assembly from de novo sequencing data. This pipeline integrates multiple tools to merge, assess, assemble, and visualize genomic data from Nanopore and Illumina platforms.

# Introduction

This github page is desgined to showcase the scripts used to assemble and analyse nanopore and illumina reads from the species Haloferax volcanii. This pipeline enabled the sucessful identification of genomic changes within the samples provided, as well as providing detailed insights into chromosomal structure. 


# Contents

- [About](#about)
- [Introduction](#Introduction)
- [Features](#features)
- [Data](#Data)
- [Prerequisites](#Prerequisites)
- [Installation](#installation)
- [Installing prerequisites](#Installing_prerequisites)
- [Usage](#usage)
- [Contributing](#contributing)
- [References](#References)
  


# Features (workflow)

(1) Merges Nanopore (long reads) and Illumina (short reads) data. Nanopore reads consist of pass reads and fail reads. Pass reads represent reads which have passed a quality assesment, while fail reads are below the quality threshold and considered "noisy" or poor quality  

(2) Assess the quality of the reads with NanoPlot

(3) Assemble of prokaryotic long read, short read and hybrid through the use of Unicycler

(4) Use Geovi to visualise the structure and content of prokaryotic long read, short read and hybrid assemblies 

(5) comparative analysis of assemblies using QUAST

(6) Annotate each genome using PROKKA

(7) visualisalise PROKKA annotation using Artemis

(8) Map short reads back to the reference using BWA

(9) Map long reads back to reference using minimap2

(10) Visualization of reads mapped back to reference in IGV

# Data

# Prerequisites

Ensure the following dependencies are installed:

- NanoPlot (v1.43.0)

- Unicycler (v0.5.1)

- QUAST (v5.3.0)

- Minimap2 (v2.28-r1209)

- BWA (v0.7.18)

- Artemis (v18.2.0)


# Installation

git clone https://github.com/ThomasMcLaughlin1/denovo_assembly.git
cd genome-assembly-pipeline

# Installing prerequisites 

conda create --name NanoPlot 
conda activate NanoPlot
conda install -c bioconda NanoPlot

conda create --name unicycler
conda activate unicycler
conda install -c bioconda unicycler

conda create --name quast
conda activate quast
conda install -c bioconda quast

conda create --name minimap2
conda activate minimap2
conda install -c bioconda minimap2

conda create --name bwa
conda activate bwa
conda install -c bioconda bwa

conda create --name artemis
conda activate artemis
conda install -c bioconda artemis

# Usage 
All SLURM scripts were submitted to the University of Nottingham's HPC. Running and moitoring jobs were done by using the following commands 
- Submitting a job: sbatch <script_name>
- moniter jobs progress: squeue -l -u <username>
- cancel job: scancel <jobID>

# Contributing
Contributions are welcome, please open an issue or submit a pull request.

# References



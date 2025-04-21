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

(1) Merges Nanopore (long reads) and Illumina (short reads) data. Nanopore reads consist of pass 
    reads and fail reads. Pass reads represent reads which have passed a quality assesment, while 
    fail reads are below the quality threshold and considered "noisy" or poor quality  

(2) Assess the quality of the reads with NanoPlot

(3) Assemble of prokaryotic long read, short read and hybrid through the use of Unicycler

(4) Annotate each genome using PROKKA

(5) comparative analysis of assemblies using QUAST

(6) visualisalise PROKKA annotation using Artemis and Genovi 

(7) Map short reads back to the reference using BWA

(8) Map long reads back to reference using minimap2

(9) Visualization of reads mapped back to reference in IGV

# Data
See [data_description.txt](ThomasMcLaughlin1/Genome_Assembly_Pipeline/Data_description.txt) for detailed description of file type, inputs and outputs
# Prerequisites

Ensure the following dependencies are installed:

- NanoPlot (v1.43.0)

- Unicycler (v0.5.1)

- QUAST (v5.3.0)

- Minimap2 (v2.28-r1209)

- BWA (v0.7.18)

- Artemis (v18.2.0)

- samtools (v1.21)


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

conda create --name samtools
conda activate samools
conda install -c bioconda samtools

# Usage 
All SLURM scripts were submitted to the University of Nottingham's HPC. Running and moitoring jobs were done by using the following commands 
- Submitting a job: sbatch <script_name>
- moniter jobs progress: squeue -l -u <username>
- cancel job: scancel <jobID>

# Contributing
Contributions are welcome, please open an issue or submit a pull request.

# References
NanoPlot (v1.43.0)
De Coster, W., D’Hert, S., Schultz, D. T., Cruts, M., & Van Broeckhoven, C. (2018). NanoPack: visualizing and processing long-read sequencing data. Bioinformatics, 34(15), 2666–2669.
https://github.com/wdecoster/NanoPlot

Unicycler (v0.5.1)
Wick, R. R., Judd, L. M., Gorrie, C. L., & Holt, K. E. (2017). Unicycler: Resolving bacterial genome assemblies from short and long sequencing reads. PLOS Computational Biology, 13(6), e1005595.
https://github.com/rrwick/Unicycler

QUAST (v5.3.0)
Gurevich, A., Saveliev, V., Vyahhi, N., & Tesler, G. (2013). QUAST: quality assessment tool for genome assemblies. Bioinformatics, 29(8), 1072–1075.
https://quast.sourceforge.net

Minimap2 (v2.28-r1209)
Li, H. (2018). Minimap2: pairwise alignment for nucleotide sequences. Bioinformatics, 34(18), 3094–3100.
https://github.com/lh3/minimap2

BWA (v0.7.18)
Li, H., & Durbin, R. (2009). Fast and accurate short read alignment with Burrows–Wheeler transform. Bioinformatics, 25(14), 1754–1760.
http://bio-bwa.sourceforge.net

Artemis (v18.2.0)
Carver, T., Harris, S. R., Berriman, M., Parkhill, J., & McQuillan, J. A. (2012). Artemis: an integrated platform for visualization and analysis of high-throughput sequence-based experimental data. Bioinformatics, 28(4), 464–469.
https://www.sanger.ac.uk/tool/artemis/

Samtools (v1.21)
Danecek, P., Bonfield, J. K., Liddle, J., Marshall, J., Ohan, V., Pollard, M. O., ... & Li, H. (2021). Twelve years of SAMtools and BCFtools. GigaScience, 10(2), giab008.
http://www.htslib.org




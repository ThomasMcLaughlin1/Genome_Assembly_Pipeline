#  Description - Genome Assembly Pipeline 

A series of shell scripts designed for genome assembly from de novo sequencing data. This pipeline integrates multiple tools to merge, assess, assemble, and visualize genomic data from Nanopore and Illumina platforms.

# Contents

- [About](#about)
- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Customization](#customization)
- [Contributing](#contributing)
- [License](#license)

# Features

- Merges Nanopore (long reads) and Illumina (short reads) data

- Quality assessment with NanoPlot

- Assembly using Unicycler

- comparative analysis of assemblies using QUAST

- Mapping reads to reference using minimap2 and BWA-mem

- Visualization and Artemis

# Prerequisites

Ensure the following dependencies are installed:

NanoPlot

Unicycler

QUAST

Minimap2

BWA

Artemis


# Installation

git clone https://github.com/ThomasMcLaughlin1/denovo_assembly.git
cd genome-assembly-pipeline

# Installing prerequisites 
conda install -c bioconda nanoplot unicycler quast minimap2 bwa



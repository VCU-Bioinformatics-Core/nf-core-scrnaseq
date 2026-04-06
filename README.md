# nf-core-rnaseq

## Purpose
This is a template repository for quality control and alignment of single-cell RNA-Seq datasets. The output from the nf-core/scrnaseq pipeline can be found [here](https://nf-co.re/scrnaseq/2.6.0/docs/output/).

## Quick Start

- Create a new Git repository under the BISR organization and check the "create from template" box, then select nfcore-scrnaseq repo template from the drop down.

- Follow the instructions for using the scRNA-Seq nf-core pipeline on the BISR Wiki: [**scRNA-Seq Step by Step Guide**](https://github.com/VCU-Bioinformatics-Core/bioinformatics-epicenter-pipelines/wiki/scRNA-seq-Step-by-Step-Guide)

- Briefly:
  - Ensure you have the correct NextFlow version installed. [Prepare Your Environment](https://github.com/VCU-Bioinformatics-Core/bioinformatics-epicenter-pipelines/wiki/scRNA-seq-Step-by-Step-Guide#preparing-your-environment)
  - Set up the project directory, [prepare raw data files](https://github.com/VCU-Bioinformatics-Core/bioinformatics-epicenter-pipelines/wiki/scRNA-seq-Step-by-Step-Guide#preparing-your-data) and edit required nextflow files like the samplesheet.
  - Run the pipeline using a parameter file or from the command line.

** *We highly recommend you [run NextFlow using a tmux session](https://github.com/VCU-Bioinformatics-Core/bioinformatics-epicenter-pipelines/wiki/scRNA-seq-Step-by-Step-Guide#running-the-pipeline-interactively-in-tmux) on the cluster.* **


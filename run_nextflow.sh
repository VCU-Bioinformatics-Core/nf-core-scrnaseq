#! /usr/bin/env bash
set -euo pipefail
#####################################################

#SBATCH --error ./logs/nextflow."%j".err
#SBATCH --output ./logs/nextflow."%j".out
#SBATCH --job-name Nextflow
#SBATCH --export=ALL
#SBATCH --partition cpu
#SBATCH --mem 32G
#SBATCH --cpus-per-task 8
#SBATCH --ntasks=1

#######################################################
# load modules required to run nextflow 
module load singularity/4.0.1
module load java/17.0.2
module load nextflow

# launch nf-core/scranseq
nextflow run nf-core/scrnaseq -r 4.0.0 -profile singularity -params-file ./nf-params.json -resume

# EOF

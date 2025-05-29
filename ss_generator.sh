#! /usr/bin/env bash
#SBATCH --job-name generate_samplesheet
#SBATCH --output ./generate_samplesheet."%j".out
#SBATCH --error ./generate_samplesheet."%j".err

SUFFIX_FWD=_R1_001.fastq.gz
SUFFIX_REV=_R2_001.fastq.gz
DEFAULT_CELLS=5000  # Set default expected cells - adjust as needed

echo "sample,fastq_1,fastq_2,expected_cells" > samplesheet.csv

for file in ./raw_data_symlinks/*${SUFFIX_FWD}; do
    # Extract the sample name by removing '${SUFFIX_FWD}' from the file name
    sample_name=$(basename "$file" ${SUFFIX_FWD})
    
    # Define the Read 1 and Read 2 file paths
    read1_file="$PWD/raw_data_symlinks/${sample_name}${SUFFIX_FWD}"
    read2_file="$PWD/raw_data_symlinks/${sample_name}${SUFFIX_REV}"
    
    # Append the sample info to the sheet with default expected cells
    echo "${sample_name},${read1_file},${read2_file},${DEFAULT_CELLS}" >> samplesheet.csv
done

# EOF

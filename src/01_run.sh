#!/bin/bash
# runsub src/01_run.sh -M 20000

# conda
module load ISG/conda
conda activate hiscanner

# initiate
# hiscanner init

# validate
hiscanner validate

# snp calling
hiscanner run --step snp

# phasing
hiscanner run --step phase

# ado analysis
hiscanner run --step ado

# normalisation
hiscanner run --step normalize

# segmentation
hiscanner run --step segment

# cnv calling
hiscanner run --step cnv

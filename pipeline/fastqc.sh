#!/bin/bash
#SBATCH --nodes 1 --ntasks 8 --mem 16G --time 48:00:00 --out fastqc_%a.log -J FastQC

module load fastqc

fastqc Exophiala_xenobiotica_1.fastq.gz Exophiala_xenobiotica_2.fastq.gz --noextract -o FastQC

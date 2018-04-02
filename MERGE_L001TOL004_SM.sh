#!/bin/bash

#Define variables

bam_path=/4/cristina/sequence_analysis_sarah/mapped_data_SM/bam_files
merged_path=/4/cristina/sequence_analysis_sarah/merged_data_SM

#For loop instructions

files=(${bam_path}/*_L001_paired_aligned.bam)
for file in ${files[@]}
do
name=${file}
base=`basename ${name} _L001_paired_aligned.bam`
samtools merge ${merged_path}/${base}_aligned_merged.bam \
	${bam_path}/${base}_L001_paired_aligned.bam \
	${bam_path}/${base}_L001_R1_unpaired_aligned.bam \
	${bam_path}/${base}_L001_R2_unpaired_aligned.bam \
	${bam_path}/${base}_L002_paired_aligned.bam \
	${bam_path}/${base}_L002_R1_unpaired_aligned.bam \
	${bam_path}/${base}_L002_R2_unpaired_aligned.bam \
	${bam_path}/${base}_L003_paired_aligned.bam \
	${bam_path}/${base}_L003_R1_unpaired_aligned.bam \
	${bam_path}/${base}_L003_R2_unpaired_aligned.bam \
	${bam_path}/${base}_L004_paired_aligned.bam \
	${bam_path}/${base}_L004_R1_unpaired_aligned.bam \
	${bam_path}/${base}_L004_R2_unpaired_aligned.bam 
done

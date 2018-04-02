#!/bin/bash

#Define variables

bam_path=/4/cristina/sequence_analysis_sarah/mapped_data_SM/bam_files
merged_path=/4/cristina/sequence_analysis_sarah/merged_data_SM

#For loop instructions

files=(${bam_path}/*_L005_paired_aligned.bam)
for file in ${files[@]}
do
name=${file}
base=`basename ${name} _L005_paired_aligned.bam`
samtools merge {merged_path}/${base}_aligned_merged.bam \
	${bam_path}/${base}_L005_paired_aligned.bam \
	${bam_path}/${base}_L005_R1_unpaired_aligned.bam \
	${bam_path}/${base}_L005_R2_unpaired_aligned.bam \
	${bam_path}/${base}_L006_paired_aligned.bam \
	${bam_path}/${base}_L006_R1_unpaired_aligned.bam \
	${bam_path}/${base}_L006_R2_unpaired_aligned.bam \
	${bam_path}/${base}_L007_paired_aligned.bam \
	${bam_path}/${base}_L007_R1_unpaired_aligned.bam \
	${bam_path}/${base}_L007_R2_unpaired_aligned.bam \
	${bam_path}/${base}_L008_paired_aligned.bam \
	${bam_path}/${base}_L008_R1_unpaired_aligned.bam \
	${bam_path}/${base}_L008_R2_unpaired_aligned.bam 
done

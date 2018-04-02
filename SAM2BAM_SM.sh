#! /bin/bash

#Define variables

sam_path=/4/cristina/sequence_analysis_sarah/mapped_data_SM/sam_files
bam_path=/4/cristina/sequence_analysis_sarah/mapped_data_SM/bam_files

#For loop instructions

files=(${sam_path}/*.sam)
for file in ${files[@]}
do 
name=${file}
base=`basename ${name} .sam`
samtools view -b -S -q 20 ${sam_path}/${base}.sam | samtools sort -o ${bam_path}/${base}.bam
done

#view
#-b outputs in bam format
#-q 20 means a minimum quality score of 20 is needed, skips alignments with MAPQ smaller than this
#sort

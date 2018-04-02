#!/bin/bash

#Define variables

rmd_path=/4/cristina/sequence_analysis_sarah/rmd_data_SM
final_bam=/4/cristina/sequence_analysis_sarah/final_bam_SM

#For loop instructions

files=(${rmd_path}/*.rmd.bam)
for file in ${files[@]}
do 
name=${file}
base=`basename ${name} .rmd.bam`
samtools view -q 20 -F 0x0004 -b ${rmd_path}/${base}.rmd.bam > ${final_bam}/${base}.final.bam
done

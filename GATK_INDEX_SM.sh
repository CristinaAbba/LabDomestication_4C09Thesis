#!/bin/bash

#Define variables

input=/4/cristina/sequence_analysis_sarah/final_bam_SM

#For loop instructions

files=(${input}/*_RG.bam)

for file in ${files[@]}
do 
name=${file}
base=`basename ${name} _RG.bam`

samtools index ${input}/${base}_RG.bam 

done

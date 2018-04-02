#!/bin/bash

#Define variables

picard=/usr/local/picard-tools-1.131/picard.jar

sort_path=/4/cristina/sequence_analysis_sarah/sorted_data_SM
temp_path=/4/cristina/sequence_analysis_sarah/temp_dir_SM
rmd_path=/4/cristina/sequence_analysis_sarah/rmd_data_SM

#For loop instructions

files=(${sort_path}/*)
for file in ${files[@]}
do
name=${file}
base=`basename ${name} .bam’
java -Xmx2g -jar ${picard} MarkDuplicates I= ${sort_path}/${base}.bam O= ${rmd_path}/${base}.rmd.bam M= ${rmd_path}/dupstat.txt VALIDATION_STRINGENCY=SILENT REMOVE_DUPLICATES= true
done

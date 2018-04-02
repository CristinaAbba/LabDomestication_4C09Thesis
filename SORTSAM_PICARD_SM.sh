#!/bin/bash

#Define variables

picard=/usr/local/picard-tools-1.131/picard.jar

merged_path=/4/cristina/sequence_analysis_sarah/merged_data_SM
sort_path=/4/cristina/sequence_analysis_sarah/sorted_data_SM
temp_path=/4/cristina/sequence_analysis_sarah/temp_dir_SM

#For loop instructions

files=(${merged_path}/*)
for file in ${files[@]}
do
name=${file}
base=`basename ${name} .bam`
java -Xmx2g -Djava.io.tmpdir=${temp_path} -jar ${picard} SortSam I= ${merged_path}/${base}.bam O= ${sort_path}/${base}.sorted.bam VALIDATION_STRINGENCY=SILENT SO=coordinate TMP_DIR=${temp_path}
done

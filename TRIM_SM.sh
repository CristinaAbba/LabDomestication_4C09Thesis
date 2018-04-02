#! /bin/bash

#Define variables

raw_path=/4/cristina/sequence_analysis_sarah/fastq_raw_SM/cvl_SM/
raw_data=${raw_path}/20161117_DNASeq_PE

trimmomatic=/usr/local/trimmomatic 
trim=${trimmomatic}/trimmomatic-0.36.jar

adapt_path=/usr/local/trimmomatic/adapters
adapter=${adapt_path}/TruSeq3-PE.fa:2:30:10

output_path=/4/cristina/sequence_analysis_sarah/trimmed_data_SM

#For loop instructions

files=(${raw_data}/*_R1_001.fastq.gz)

for file in ${files[@]}
do
name=${file}
base=`basename ${name} _R1_001.fastq.gz`
java –jar PE -phred33 ${trim} ${raw_data}/${base}_R1_001.fastq.gz ${raw_data}/${base}_R2_001.fastq.gz ${output_path}/${base}_R1_paired.fastq.gz ${output_path}/${base}_R1_unpaired.fastq.gz ${output_path}/${base}_R2_paired.fastq.gz ${output_path}/${base}_R2_unpaired.fastq.gz ILLUMINACLIP:${adapter} LEADING:3 TRAILING:3 MAXINFO:40:0.5 MINLEN:36
done

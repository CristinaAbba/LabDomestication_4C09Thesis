#! /bin/bash

#Define variables

bwa_path=/usr/local/bwa/0.7.8

index_dir=/4/cristina/ref_genome
ref_gen=${index_dir}/dmel-all-chromosome-r5.57.fasta.gz

trim_path=/4/cristina/sequence_analysis_sarah/trimmed_data_SM
sam_path=/4/cristina/sequence_analysis_sarah/mapped_data_SM/sam_files

#For loop instructions

cd ${bwa_path}
files=(${trim_path}/*_R1_paired.fastq.gz)

for file in ${files[@]}
do
name=${file}
base=`basename ${name} _R1_paired.fastq.gz`
bwa mem -t 8 -M ${ref_gen} ${trim_path}/${base}_R1_paired.fastq.gz ${trim_path}/${base}_R2_paired.fastq.gz > ${sam_path}/${base}_paired_aligned.sam
done

#-t indicates number of threads (processors)
#-M to mark shorter split hits as secondary (for Picard compatibility)

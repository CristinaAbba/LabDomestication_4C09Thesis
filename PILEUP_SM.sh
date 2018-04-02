#!/bin/bash

#Define variables

input=/4/cristina/sequence_analysis_sarah/gatk_dir_SM

output=/4/cristina/sequence_analysis_sarah/pileup_files_SM

index_dir=/4/cristina/ref_genome
ref_gen=${index_dir}/dmel-all-chromosome-r5.57_2.fasta

files=(${input}/*_indel.bam)

#For loop instructions

for file in ${files[@]}
do
name=${file}
base=`basename ${name} _indel.bam`
samtools mpileup -B -Q 0 -f ${ref_gen} ${input}/${base}_indel.bam > ${output}/${base}.pileup
done

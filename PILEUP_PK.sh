#!/bin/bash

#Define variables

input=/4/cristina/sequence_analysis_paul/gatk_dir_PK

output=/4/cristina/sequence_analysis_paul/pileup_files_PK

index_dir=/4/cristina/ref_genome
ref_gen=${index_dir}/dmel-all-chromosome-r5.57_2.fasta

files=(${input}/*_realigned.bam)

#For loop instructions

for file in ${files[@]}
do
name=${file}
base=`basename ${name} _realigned.bam`
samtools mpileup -B -Q 0 -f ${ref_gen} ${input}/${base}_realigned.bam > ${output}/${base}.pileup
done

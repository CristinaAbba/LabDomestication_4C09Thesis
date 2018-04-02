#!/bin/bash

#Define variables

final_bam=/4/cristina/sequence_analysis_sarah/final_bam_SM

gatk_dir=/4/cristina/sequence_analysis_sarah/gatk_dir_SM

index_dir=/4/cristina/ref_genome
ref_gen=${index_dir}/dmel-all-chromosome-r5.57_2.fasta

gatk=/usr/local/gatk/GenomeAnalysisTK.jar

#For loop instructions

files=(${final_bam}/*_RG.bam)
for file in ${files[@]}
do
name=${file}
base=`basename ${name} _RG.bam`

java -Xmx12g -jar ${gatk} -I ${final_bam}/${base}_RG.bam -R ${ref_gen} \
	-T RealignerTargetCreator \
	-o ${gatk_dir}/${base}.intervals

done

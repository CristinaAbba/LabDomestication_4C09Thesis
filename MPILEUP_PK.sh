#!/bin/bash

#Variable for reference genome (non-zipped)

index_dir=/4/cristina/ref_genome
ref_gen=${index_dir}/dmel-all-chromosome-r5.57_2.fasta

#Variable for unique name so that the file can be easily identified later

name=lab_adaptation_PK

#Path to final .bam files 

gatk=/4/cristina/sequence_analysis_paul/gatk_dir_PK

#Instructions for mpileup

sync=/usr/local/popoolation/mpileup2sync.jar

samtools mpileup -B -Q 0 -f ${ref_gen} ${gatk}/*.bam > ${gatk}/${name}.gatk.mpileup

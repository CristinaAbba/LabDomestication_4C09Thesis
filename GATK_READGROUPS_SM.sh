#!/bin/bash

#Define variables

picard=/usr/local/picard-tools-1.131/picard.jar

final=/4/cristina/sequence_analysis_sarah/final_bam_SM

#For loop instructions

files=(${final}/*.final.bam)

for file in ${files[@]}
do
name=${file}
base=`basename ${name} .final.bam`

java -jar ${picard} AddOrReplaceReadGroups I=${final}/${base}.final.bam \
	O=${final}/${base}_RG.bam \
	RGID=L001_L008 \
	RGLB=library1 \
	RGPL=illumina \
	RGPU=None \
	RGSM=${base}

done

#!/bin/bash

#Define variables

popoolation=/4/cristina/popoolation_1.2.2

input=/4/cristina/sequence_analysis_sarah/pileup_files_SM

output=/4/cristina/sequence_analysis_sarah/tajimas_d_SM

files=(${input}/*.pileup)

#For loop instructions

for file in ${files[@]}
do
name=${file}
base=`basename ${name} .pileup`
perl ${popoolation}/Variance-sliding.pl \
	--input ${input}/${base}.pileup \
	--output ${output}/${base}.D \
	--measure D \
	--window-size 10000 \
	--step-size 10000 \
	--min-count 2 \
	--min-coverage 4 \
	--max-coverage 400 \
	--min-qual 20 \
	--pool-size 200 \
	--fastq-type sanger \
	--snp-output ${output}/${base}.snps \
	--min-covered-fraction 0.5
done

#!/bin/bash

#Define variables:

subsample=/usr/local/popoolation/subsample-synchronized.pl

input=/4/cristina/sequence_analysis_paul/gatk_dir_PK/lab_adaptation_PK.sync
output=/4/cristina/sequence_analysis_paul/popool2_PK/lab_adaptation_PK.subsample.sync

perl ${subsample} \
 	--input ${input} \
	--output ${output} \
	--target-coverage 30 \
	--max-coverage 250 \
	--method withreplace

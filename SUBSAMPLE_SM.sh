#!/bin/bash

#Define variables:

subsample=/usr/local/popoolation/subsample-synchronized.pl

input=/4/cristina/sequence_analysis_sarah/gatk_dir_SM/lab_adaptation_SM.gatk.sync

output=/4/cristina/sequence_analysis_sarah/popool2_SM/lab_adaptation_SM.subsample.sync

perl ${subsample} \
 	--input ${input}
	--output ${output}
	--target-coverage 90
	--max-coverage 800,400,400,400,400,400,400
	--method withreplace

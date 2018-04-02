#!/bin/bash

#Define variables:

popoolation2=/usr/local/popoolation

input=/4/cristina/sequence_analysis_sarah/gatk_dir_SM

output=/4/cristina/sequence_analysis_sarah/popool2_SM

#Instructions:

perl ${popoolation2}/fst-sliding.pl \
	--window-size 500 \
	--step-size 500 \
	--suppress-noninformative \
	--input ${input}/lab_adaptation_SM.gatk.sync \
	--min-covered-fraction 0.3 \
	--min-coverage 8 \
	--max-coverage 1000,300,300,300,300,300,300 \
	--min-count 3 \
	--output ${output}/Fst.sub_SM.fst \
	--pool-size 200

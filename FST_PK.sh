#!/bin/bash

#Define variables:

popoolation2=/usr/local/popoolation

input=/4/cristina/sequence_analysis_paul/gatk_dir_PK

output=/4/cristina/sequence_analysis_paul/popool2_PK

#Instructions:

perl ${popoolation2}/fst-sliding.pl \
	--window-size 500 \
	--step-size 500 \
	--suppress-noninformative \
	--input ${input}/lab_adaptation_PK.sync \
	--min-covered-fraction 0.3 \
	--min-coverage 3 \
	--max-coverage 250 \
	--min-count 3 \
	--output ${output}/Fst_PK.fst \
	--pool-size 120

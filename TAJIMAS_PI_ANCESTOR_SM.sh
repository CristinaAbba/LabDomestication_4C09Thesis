#!/bin/bash

#Define variables

popoolation=/4/cristina/popoolation_1.2.2

input=/4/cristina/sequence_analysis_sarah/pileup_files_SM/ANCESTOR_ALL_aligned_merged.sorted.final.pileup

output=/4/cristina/sequence_analysis_sarah/tajimas_pi_SM/ANCESTOR_ALL_aligned_merged.sorted.final.800.pi

perl ${popoolation}/Variance-sliding.pl \
	--input ${input} \
	--output ${output} \
	--measure pi \
	--window-size 10000 \
	--step-size 10000 \
	--min-count 2 \
	--min-coverage 4 \
	--max-coverage 800 \
	--min-qual 20 \
	--pool-size 200 \
	--fastq-type sanger \
	--min-covered-fraction 0.5

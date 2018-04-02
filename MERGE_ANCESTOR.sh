#!/bin/bash

#Define variables

merged_path=/4/cristina/sequence_analysis_sarah/merged_ancestor_SM

#Instructions

samtools merge ${merged_path}/ANCESTOR_ALL_aligned_merged.bam \
	${merged_path}/ANCESTOR_R1_ATTACTCG-TATAGCCT_aligned_merged.bam \	${merged_path}/ANCESTOR_R2_ATTACTCG-ATAGAGGC_aligned_merged.bam \
	${merged_path}/ANCESTOR_R3_ATTACTCG-CCTATCCT_aligned_merged.bam \
	${merged_path}/ANCESTOR_R4_ATTACTCG-GGCTCTGA_aligned_merged.bam 

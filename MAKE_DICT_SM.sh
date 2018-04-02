#!/bin/bash

picard=/usr/local/picard-tools-1.131/picard.jar

index_dir=/4/cristina/ref_genome
ref_gen=${index_dir}/dmel-all-chromosome-r5.57_2.fasta

java -jar ${picard} CreateSequenceDictionary R=${ref_gen} O=${index_dir}/dmel-all-chromosome-r5.57_2.dict

#!/bin/bash

#Variable for unique name so that the file can be easily identified later

name=lab_adaptation_SM

#Path to .bam files from GATK

gatk=/4/cristina/sequence_analysis_sarah/gatk_dir_SM

#Instructions for sync

sync=/usr/local/popoolation/mpileup2sync.jar

java -ea -Xmx12g -jar ${sync} --input ${gatk}/${name}.gatk.mpileup --output ${gatk}/${name}.gatk.sync

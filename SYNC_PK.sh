#!/bin/bash

#Variable for unique name so that the file can be easily identified later

name=lab_adaptation_PK

#Path to final bam files

gatk=/4/cristina/sequence_analysis_paul/gatk_dir_PK

#Instructions for sync

sync=/usr/local/popoolation/mpileup2sync.jar

java -ea -Xmx32g -jar ${sync} --input ${gatk}/${name}.mpileup --output ${gatk}/${name}.sync

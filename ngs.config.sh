#!/bin/bash
##
## Set up programs and resources' paths
##

#=====================================================================================
# Users: Set path to each tool installed on the server

# Programs
export PYTHON=path/to/python
export BCL2FASTQ=path/to/CASAVA/bin/configureBclToFastq.pl
export CUTADAPT=path/to/cutadapt
export SICKLE=path/to/sickle
export BWA=path/to/bwa
export SAMTOOLS=path/to/samtools
export PICARD_PATH=path/to/picardtools_directory
export GATK=path/to/GenomeAnalysisTK.jar
export GATK_ANALYZECOVARIATES=path/to/AnalyzeCovariates.jar
export VARSCAN=path/to/VarScan.jar
export SOMATIC_SNIPER=path/to/bam-somaticsniper
export SNPEFF=path/to/snpEff.jar
export SNPEFF_CONFIG=path/to/snpEff.config
export VEP=path/to/variant_effect_predictor.pl
export BEDTOOLS_PATH=path/to/bedtools_dir
export FASTQC=path/to/fastqc
export MUSIC=path/to/music

# GATK Resource Bundle
export B3x=path/to/gatk/resource-bundle/b37
export B3x_REF=$B3x/human_g1k_v37.fasta
export B3x_DBSNP_VCF=$B3x/dbsnp_135.b37.vcf
export B3x_MILLS_INDELS_VCF=$B3x/Mills_and_1000G_gold_standard.indels.b37.vcf
export B3x_MILLS_INDELS_SITES_VCF=$B3x/Mills_and_1000G_gold_standard.indels.b37.sites.vcf
export B3x_1000G_INDELS_PHASE1_VCF=$B3x/1000G_phase1.indels.b37.vcf
export B3x_HAPMAP_VCF=$B3x/hapmap_3.3.b37.vcf
export B3x_HAPMAP_SITES_VCF=$B3x/hapmap_3.3.b37.sites.vcf
export B3x_OMNI1000_VCF=$B3x/1000G_omni2.5.b37.vcf
export B3x_OMNI1000_VCF=$B3x/1000G_omni2.5.b37.sites.vcf

export HG=path/to/gatk/resource-bundle/hg19
export HG_REF=$HG/ucsc.hg19.fasta
export HG_DBSNP_VCF=$HG/dbsnp_135.hg19.vcf
export HG_DBSNP_SITES_VCF=$HG/hapmap_3.3.hg19.sites.vcf
export HG_MILLS_INDELS_VCF=$HG/Mills_and_1000G_gold_standard.indels.hg19.vcf
export HG_MILLS_INDELS_SITES_VCF=$HG/Mills_and_1000G_gold_standard.indels.hg19.sites.vcf
export HG_1000G_INDELS_PHASE1_VCF=$HG/1000G_phase1.indels.b37.vcf
export HG_HAPMAP_VCF=$HG/hapmap_3.3.b37.vcf
export HG_HAPMAP_SITES_VCF=$HG/hapmap_3.3.b37.sites.vcf
export HG_OMNI1000_VCF=$HG/1000G_omni2.5.b37.vcf
export HG_OMNI1000_VCF=$HG/1000G_omni2.5.b37.sites.vcf

# Other Resources
export UCSC_REFFLAT=path/to/refFlat.txt
export UCSC_DBSNP=path/to/snp135.txt
export SURESELECT_BED=path/to/SureSelect_All_Exon_50mb_with_annotation_hg19_bed
export SURESELECT_INTERVAL=path/to/SureSelect_All_Exon_50mb_with_annotation_hg19_bed.exceptChrUn.intervals

#=====================================================================================
# Developers Only

# NGS Analysis Pipeline Framework Tools
source $NGS_ANALYSIS_DIR/lib/bash/bash_fnc.sh
export PATH=$PATH:$NGS_ANALYSIS_DIR/modules/align
export PATH=$PATH:$NGS_ANALYSIS_DIR/modules/annot
export PATH=$PATH:$NGS_ANALYSIS_DIR/modules/seq
export PATH=$PATH:$NGS_ANALYSIS_DIR/modules/somatic
export PATH=$PATH:$NGS_ANALYSIS_DIR/modules/util
export PATH=$PATH:$NGS_ANALYSIS_DIR/modules/variant
export JAVAJAR2G='java -Xmx1g -Djava.io.tmpdir='$PWD' -jar'
export JAVAJAR2G='java -Xmx2g -Djava.io.tmpdir='$PWD' -jar'
export JAVAJAR4G='java -Xmx4g -Djava.io.tmpdir='$PWD' -jar'
export JAVAJAR8G='java -Xmx8g -Djava.io.tmpdir='$PWD' -jar'
export JAVAJAR16G='java -Xmx16g -Djava.io.tmpdir='$PWD' -jar'
export JAVAJAR32G='java -Xmx32g -Djava.io.tmpdir='$PWD' -jar'
export JAVAJAR64G='java -Xmx64g -Djava.io.tmpdir='$PWD' -jar'
export JAVAJAR128G='java -Xmx128g -Djava.io.tmpdir='$PWD' -jar'
export JAVAJAR256G='java -Xmx256g -Djava.io.tmpdir='$PWD' -jar'
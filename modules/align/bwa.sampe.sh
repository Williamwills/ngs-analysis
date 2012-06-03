#!/bin/bash
##
## DESCRIPTION: Convert aligned paired read sai files to a single sam file
##
## USAGE: bwa.sampe.sh sample.R1.aln.sai sample.R2.aln.sai sample.R1.fastq.gz sample.R2.fastq.gz
##
## OUTPUT: sample.RP.sam.gz
##

# Load bash function library
source $NGS_ANALYSIS_DIR/lib/bash/bash_fnc.sh

# Check correct usage
usage 4 $# $0

R1_SAI=$1
R2_SAI=$2
R1_FASTQ=$3
R2_FASTQ=$4


# Format output filenames
OUTPUTPREFIX=`filter_ext $R1_SAI 3`
OUTPUTFILE=$OUTPUTPREFIX.RP.sam.gz
OUTPUTERROR=$OUTPUTPREFIX.RP.sam.err

# Run tool
$BWA                    \
  sampe                 \
  $REF                  \
  $R1_SAI               \
  $R2_SAI               \
  $R1_FASTQ             \
  $R2_FASTQ             \
  | gzip                \
  1> $OUTPUTFILE        \
  2> $OUTPUTERROR
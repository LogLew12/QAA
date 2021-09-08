#!/usr/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=1
#SBATCH --mail-user='llewis3@uoregon.edu'
#SBATCH --mail-type=END,FAIL
#SBATCH --time=10:00:00

/usr/bin/time -v python DemuxPt1.py \
-l 101 \
-f /projects/bgmp/shared/2017_sequencing/demultiplexed/6_2D_mbnl_S5_L008_R2_001.fastq.gz \
-o "6_R2_avgqscore.png"
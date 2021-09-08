#!/usr/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=16
#SBATCH --mail-user='llewis3@uoregon.edu'
#SBATCH --mail-type=END,FAIL
#SBATCH --time=10:00:00

/usr/bin/time -v STAR --runThreadN 16 --runMode alignReads \
--outFilterMultimapNmax 3 \
--outSAMunmapped Within KeepPairs \
--alignIntronMax 1000000 --alignMatesGapMax 1000000 \
--readFilesCommand zcat \
--readFilesIn /projects/bgmp/llewis3/bioinformatics/Bi623/QAA/trim/trimmed_34_1P.fq.gz /projects/bgmp/llewis3/bioinformatics/Bi623/QAA/trim/trimmed_34_2P.fq.gz \
--genomeDir /projects/bgmp/llewis3/bioinformatics/Bi623/QAA/mouse_star_database \
--outFileNamePrefix Out34_
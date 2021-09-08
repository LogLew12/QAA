#!/usr/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=8
#SBATCH --mail-user='llewis3@uoregon.edu'
#SBATCH --mail-type=END,FAIL
#SBATCH --time=10:00:00

/usr/bin/time -v STAR --runThreadN 8 --runMode genomeGenerate \
--genomeDir /projects/bgmp/llewis3/bioinformatics/Bi623/QAA/mouse_star_database \
--genomeFastaFiles /projects/bgmp/llewis3/bioinformatics/Bi623/QAA/mouse/Mus_musculus.GRCm39.dna.primary_assembly.fa \
--sjdbGTFfile /projects/bgmp/llewis3/bioinformatics/Bi623/QAA/mouse/Mus_musculus.GRCm39.104.gtf
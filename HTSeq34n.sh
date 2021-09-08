#!/usr/bin/bash
#SBATCH --account=bgmp
#SBATCH --partition=bgmp
#SBATCH --cpus-per-task=1
#SBATCH --mail-user='llewis3@uoregon.edu'
#SBATCH --mail-type=END,FAIL
#SBATCH --time=10:00:00

/usr/bin/time -v htseq-count --stranded=no -r name \
/projects/bgmp/llewis3/bioinformatics/Bi623/QAA/Sorted_Out34_Aligned.out.sam \
/projects/bgmp/llewis3/bioinformatics/Bi623/QAA/mouse/Mus_musculus.GRCm39.104.gtf \
> Out_HTSeq34n.txt
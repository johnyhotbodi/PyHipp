#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH --cpus-per-task=1	# number of processors per task
<<<<<<<< HEAD:l6_rplhighpass-sort-slurm.sh
#SBATCH -J "rplHP-sort"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o rplhp-sort-slurm.%N.%j.out # STDOUT
#SBATCH -e rplhp-sort-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
========

#SBATCH -J "rplhps"   # job name
>>>>>>>> origin/main:rplhighpass-sort-slurm.sh

/data/miniconda3/bin/conda init
source ~/.bashrc
envarg=`/data/src/PyHipp/envlist.py`
conda activate $envarg

python -u -c "import PyHipp as pyh; \
import time; \
pyh.RPLHighPass(saveLevel=1); \
from PyHipp import mountain_batch; \
mountain_batch.mountain_batch(); \
from PyHipp import export_mountain_cells; \
export_mountain_cells.export_mountain_cells(); \
print(time.localtime());"

conda deactivate 
/data/src/PyHipp/envlist.py $envarg
<<<<<<<< HEAD:l6_rplhighpass-sort-slurm.sh

========
>>>>>>>> origin/main:rplhighpass-sort-slurm.sh

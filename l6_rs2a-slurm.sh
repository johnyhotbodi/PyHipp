#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=24:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
<<<<<<<< HEAD:l6_rs2a-slurm.sh
#SBATCH --cpus-per-task=5      # number of processors per task
========

#SBATCH --cpus-per-task=5	# number of processors per task

>>>>>>>> origin/main:rs2a-slurm.sh
#SBATCH -J "rs2a"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o rs2a-slurm.%N.%j.out # STDOUT
#SBATCH -e rs2a-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
python -u -c "import PyHipp as pyh; \
import DataProcessingTools as DPT; \
import os; \
import time; \
t0 = time.time(); \
print(time.localtime()); \
<<<<<<<< HEAD:l6_rs2a-slurm.sh
DPT.objects.processDirs(dirs=None, objtype=pyh.RPLSplit, channel=[*range(33,65)], SkipHPC=False, HPCScriptsDir = '/data/src/PyHipp/', SkipLFP=False, SkipHighPass=False, SkipSort=False); \
print(time.localtime()); \
print(time.time()-t0);"

aws sns publish --topic-arn arn:aws:sns:ap-southeast-1:762952520311:awsnotify --message "RPLS2AJobDone"
========

DPT.objects.processDirs(dirs=None, objtype=pyh.RPLSplit, channel=[*range(33,65)], SkipHPC=False, HPCScriptsDir='/data/src/PyHipp/', SkipLFP=False, SkipHighPass=False, SkipSort=False); \
print(time.localtime()); \
print(time.time()-t0);"

aws sns publish --topic-arn arn:aws:sns:ap-southeast-1:018084650241:awsnotify --message "RPLS2JobDone"

>>>>>>>> origin/main:rs2a-slurm.sh

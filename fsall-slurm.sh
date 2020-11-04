#!/bin/bash

# Submit this script with: sbatch <this-filename>

#SBATCH --time=1:00:00   # walltime
#SBATCH --ntasks=1   # number of processor cores (i.e. tasks)
#SBATCH --nodes=1   # number of nodes
#SBATCH -J "fsall"   # job name

## /SBATCH -p general # partition (queue)
#SBATCH -o fsall-slurm.%N.%j.out # STDOUT
#SBATCH -e fsall-slurm.%N.%j.err # STDERR

# LOAD MODULES, INSERT CODE, AND RUN YOUR PROGRAMS HERE
<<<<<<< HEAD
python -u -c "import PyHipp as pyh; import DataProcessingTools as DPT; lfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*','*mountains*'], objtype=pyh.FreqSpectrum, saveLevel=1); lfall.save(); hfall = DPT.objects.processDirs(dirs=None, exclude=['*eye*','*mountains*'], objtype=pyh.FreqSpectrum, loadHighPass=True, pointsPerWindow=3000, saveLevel=1); hfall.save();"
=======
python -u -c "import PyHipp as pyh; import time; pyh.RPLLFP(saveLevel = 1); print(time.localtime());"
>>>>>>> 36aab1a73afb039f27a5ccc2e5aa36cbaaf25a43

#!/bin/bash
#
#SBATCH -p gpu
#SBATCH --gres gpu:rtx5000:1
#SBATCH --mem=4gb

hostname
module load nvidia/10.0
printenv | grep CUDA

# export MODULEPATH=/nfs/apps/Modules/modulefiles:$MODULEPATH
# module load tensorflow-gpu
python helmholtz_nodream.py --max_iterations 1000


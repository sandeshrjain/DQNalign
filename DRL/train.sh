#!/bin/bash -l
#SBATCH -t 06:00:00
#SBATCH -p t4_normal_q
#SBATCH -A ece5984
#SBATCH --nodes=1
#SBATCH --mem-per-cpu=16G
#SBATCH --gres=gpu:1
#SBATCH -J DQNalign
#SBATCH -o logs/ssd_mod2.txt

module load Anaconda3

source activate

conda activate DQNalign

module load cuDNN/7.6.4.38-CUDA-10.0.130-GCC-6.4.0-2.28

module load CUDA/9.0.176-GCC-6.4.0-2.28

cd /home/sandeshrjain/DRL

python train.py > ./ssd_mod2.txt

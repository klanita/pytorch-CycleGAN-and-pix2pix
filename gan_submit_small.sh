#!/bin/bash

#SBATCH  --output=./LOGS/%j.out
#SBATCH  --error=./LOGS/%j.out
#SBATCH  --gres=gpu:1
#SBATCH  --mem=40G
#SBATCH --account=staff
##SBATCH --constraint='titan_xp'
#SBATCH --constraint='titan_xp|geforce_rtx_2080_ti|geforce_gtx_1080_ti'
##SBATCH --constraint='geforce_rtx_2080_ti|titan_xp'

source /itet-stor/klanna/net_scratch/conda/etc/profile.d/conda.sh
conda activate pytorch-CycleGAN-and-pix2pix
 
WORKPATH=/usr/bmicnas02/data-biwi-01/klanna_data/results/MIC-gan/

python train.py --dataroot /itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/cyclegan/"$1" --name "$1" --model cycle_gan --checkpoints_dir /usr/bmicnas02/data-biwi-01/klanna_data/results/MIC-gan/ --use_wandb

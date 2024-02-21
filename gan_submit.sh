#!/bin/bash

#SBATCH  --output=/usr/bmicnas02/data-biwi-01/klanna_data/results/MIC/LOGS/%j.out
#SBATCH  --error=/usr/bmicnas02/data-biwi-01/klanna_data/results/MIC/LOGS/%j.out
#SBATCH  --gres=gpu:1
#SBATCH  --mem=80G
##SBATCH --account=bmic
##SBATCH --time=300

source /itet-stor/klanna/net_scratch/conda/etc/profile.d/conda.sh
conda activate gan
 
WORKPATH=/usr/bmicnas02/data-biwi-01/klanna_data/results/MIC-gan/

python train.py --dataroot /itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/cyclegan/"$1" --name "$1" --model cycle_gan --use_wandb --checkpoints_dir /usr/bmicnas02/data-biwi-01/klanna_data/results/MIC-gan/

#!/bin/bash

#SBATCH  --output=./LOGS_TEST/%j.out
#SBATCH  --error=./LOGS_TEST/%j.out
#SBATCH  --gres=gpu:1
#SBATCH  --mem=40G
#SBATCH --account=staff
##SBATCH --constraint='titan_xp'
#SBATCH --constraint='titan_xp|geforce_rtx_2080_ti|geforce_gtx_1080_ti'
##SBATCH --constraint='geforce_rtx_2080_ti|titan_xp'

source /itet-stor/klanna/net_scratch/conda/etc/profile.d/conda.sh
conda activate pytorch-CycleGAN-and-pix2pix
 
WORKPATH=/usr/bmicnas02/data-biwi-01/klanna_data/results/MIC-gan/

NAME=$1
DATAPATH="/itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/cyclegan/$1/trainA"
CKPTDIR="/usr/bmicnas02/data-biwi-01/klanna_data/results/MIC-gan/"

# net='latest_net_G_A.pth'

#spine_ct-mri
net='20_net_G_A.pth'

#hcp1-hcp2
# net='65_net_G_A.pth'

cp $CKPTDIR/$NAME/$net $CKPTDIR/$NAME/latest_net_G.pth

python test.py --dataroot $DATAPATH --name $NAME --model test --use_wandb --checkpoints_dir $CKPTDIR --no_dropout --dataset_mode single --results_dir $WORKPATH --num_test 10000000

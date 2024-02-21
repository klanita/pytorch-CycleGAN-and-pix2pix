
#!/bin/bash

# modality="brain"
# dataset="umc"
# ganfoler="umc-nuhs"

modality="brain"
dataset="hcp1"
ganfoler="hcp1-hcp2"  

# modality="brain"
# dataset="abide_caltech"
# ganfoler="abidec-hcp2"

# modality="lumbarspine"
# dataset="VerSe"
# ganfoler="spine_ct-mri"

# mkdir -p /itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/$modality/$dataset-gan/images/train
# mkdir /itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/$modality/$dataset-gan/labels/
# cp /itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/$modality/$dataset/scale* /itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/$modality/$dataset-gan/
# cp -r /itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/$modality/$dataset/labels/train /itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/$modality/$dataset-gan/labels/
# for file in *.png; do
#     if [[ $file =~ ^([0-9]+)(_labelTrainIds)?\.png$ ]]; then
#         number=${BASH_REMATCH[1]}
#         label=${BASH_REMATCH[2]}
#         new_name="${number}_fake${label}.png"
#         mv "$file" "$new_name"
#     fi
# done


# for file in sub-verse*_*.png; do
#     if [[ $file =~ ^(sub-verse[0-9]+_)([0-9]+)(_labelTrainIds)?\.png$ ]]; then
#         prefix=${BASH_REMATCH[1]}
#         number=${BASH_REMATCH[2]}
#         label=${BASH_REMATCH[3]}
#         new_name="${prefix}${number}_fake${label}.png"
#         mv "$file" "$new_name"
#     fi
# done



cp /usr/bmicnas02/data-biwi-01/klanna_data/results/MIC-gan/$ganfoler/test_latest/images/*fake.png /itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/$modality/$dataset-gan/images/train/

ls /itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/$modality/$dataset-gan/labels/train/ | wc -l
ls /itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/$modality/$dataset-gan/images/train/ | wc -l

scp -r /itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/$modality/$dataset-gan/ klanna@euler.ethz.ch:/cluster/work/cvl/klanna/$modality/



#!/bin/bash

# PATHSRC='/itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/brain/abide_caltech/images'
# PATHTGT='/itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/cyclegan/abidec-hcp2/'

# cp -r $PATHSRC/val $PATHTGT/valA
# cp -r $PATHSRC/test $PATHTGT/testA
# cp -r $PATHSRC/train $PATHTGT/trainA


# UMC-NUHS
# PATHSRCA='/itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/brain/umc/images'
# PATHSRCB='/itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/brain/nuhs/images'
# PATHTGT='/itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/cyclegan/umc-nuhs/'

# cp -r $PATHSRCA/val $PATHTGT/valA
# cp -r $PATHSRCA/test $PATHTGT/testA
# cp -r $PATHSRCA/train $PATHTGT/trainA

# cp -r $PATHSRCB/val $PATHTGT/valB
# cp -r $PATHSRCB/test $PATHTGT/testB
# cp -r $PATHSRCB/train $PATHTGT/trainB

# NUHS-UMC
# PATHSRCA='/itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/brain/nuhs/images'
# PATHSRCB='/itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/brain/umc/images'
# PATHTGT='/itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/cyclegan/nuhs-umc/'

# cp -r $PATHSRCA/val $PATHTGT/valA
# cp -r $PATHSRCA/test $PATHTGT/testA
# cp -r $PATHSRCA/train $PATHTGT/trainA

# cp -r $PATHSRCB/val $PATHTGT/valB
# cp -r $PATHSRCB/test $PATHTGT/testB
# cp -r $PATHSRCB/train $PATHTGT/trainB


# CT-MRI
PATHSRCA='/itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/lumbarspine/VerSe/images'
PATHSRCB='/itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/da_data/lumbarspine/MRSpineSegV/images'
PATHTGT='/itet-stor/klanna/bmicdatasets_bmicnas02/Sharing/klanna/cyclegan/spine_ct-mri/'

mkdir $PATHTGT

cp -r $PATHSRCA/val $PATHTGT/valA
cp -r $PATHSRCA/test $PATHTGT/testA
cp -r $PATHSRCA/train $PATHTGT/trainA

cp -r $PATHSRCB/val $PATHTGT/valB
cp -r $PATHSRCB/test $PATHTGT/testB
cp -r $PATHSRCB/train $PATHTGT/trainB
#!/bin/bash
export CUDA_VISIBLE_DEVICES=$1
ckpt_id=$2
images_path=$3

### DEFINE THE ROOT PATH HERE ###
abs_root=/kaggle/working/CLIP4STR

exp_path=${abs_root}/${ckpt_id}
runfile=read.py

python ${runfile} ${exp_path} --images_path ${images_path}

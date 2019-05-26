#!/bin/bash

devices=$1
save_name=$2

python -u train.py --dataset ./data \
--glove_embed_path ./data/glove.42B.300d.txt \
--cuda \
--epoch 50 \
--loss_epoch_threshold 50 \
--sketch_loss_coefficie 1.0 \
--beam_size 5 \
--seed 90 \
--save ${save_name} \
--embed_size 300 \
--sentence_features \
--column_pointer \
--hidden_size 300 \
--lr_scheduler \
--lr_scheduler_gammar 0.5 \
--att_vec_size 300 \
--load_model ./saved_model/IRNet_pretrained.model

#python fix_lf.py --data_path ./data
#python fix_col.py --data_path ./data
##echo "Start transform lf"
#python lf2sql.py --data_path ./data --output_path ${save_name}

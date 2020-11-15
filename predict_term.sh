#!/usr/bin/env bash

  CUDA_VISIBLE_DEVICES=5,6,7 python BERT_NER.py\
    --task_name="TERM"  \
    --do_lower_case=False \
    --crf=True \
    --do_train=False   \
    --do_eval=False   \
    --do_predict=True \
    --data_dir=term_data   \
    --vocab_file=cased_L-12_H-768_A-12/vocab.txt  \
    --bert_config_file=cased_L-12_H-768_A-12/bert_config.json \
    --init_checkpoint=cased_L-12_H-768_A-12/bert_model.ckpt  \
    --max_seq_length=128   \
    --train_batch_size=64   \
    --learning_rate=2e-5   \
    --num_train_epochs=4.0   \
    --output_dir=./output/result_dir_large
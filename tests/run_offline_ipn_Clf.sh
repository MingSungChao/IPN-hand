#!/bin/bash
export CUDA_VISIBLE_DEVICES=0

python offline_test.py \
	--root_path /c/Users/min/ \
	--video_path /d/datasets/HandGestures/IPN_dataset \
	--annotation_path IPN-hand/annotation_ipnGesture/ipnall_but_None.json \
	--result_path IPN-hand/results_ipn \
	--resume_path IPN-hand/report_ipn/ipnClf_jes32rb32_resnext-101.pth \
    --store_name ipnClf_jes32r_b32 \
	--modality RGB \
	--dataset ipn \
	--sample_duration 32 \
    --model resnext \
	--model_depth 101 \
	--resnet_shortcut B \
	--batch_size 1 \
	--n_classes 13 \
	--n_finetune_classes 13 \
	--n_val_samples 1 \
	--test_subset test \
    --n_epochs 100 \
    --no_train \
    --no_val \
    --test \
	--no_cuda \
	--n_threads 0 \
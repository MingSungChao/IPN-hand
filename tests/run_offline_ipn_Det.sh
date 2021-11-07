#!/bin/bash
export CUDA_VISIBLE_DEVICES=0

python offline_test.py \
	--root_path /c/Users/min/ \
	--video_path /d/datasets/HandGestures/IPN_dataset \
	--annotation_path IPN-hand/annotation_ipnGesture/ipnbinary.json \
	--result_path IPN-hand/results_ipn \
	--resume_path IPN-hand/report_ipn/ipnDet_sc8b64_resnetl-10.pth \
    --store_name ipnDet_sc8b64 \
	--modality RGB \
	--dataset ipn \
	--sample_duration 8 \
    --model resnetl \
	--model_depth 10 \
	--resnet_shortcut A \
	--batch_size 1 \
	--n_classes 2 \
	--n_finetune_classes 2 \
	--n_val_samples 1 \
	--test_subset test \
    --n_epochs 100 \
    --no_train \
    --no_val \
    --test \
	--no_cuda \
	--n_threads 0 \
	# --no_first_lay \
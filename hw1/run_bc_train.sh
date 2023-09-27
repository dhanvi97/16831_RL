#!/bin/bash
python rob831/scripts/run_hw1.py \
--expert_policy_file rob831/policies/experts/Ant.pkl \
--env_name Ant-v2 --exp_name bc_ant --n_iter 1 \
--expert_data rob831/expert_data/expert_data_Ant-v2.pkl \
--video_log_freq -1

python rob831/scripts/run_hw1.py \
--expert_policy_file rob831/policies/experts/Hopper.pkl \
--env_name Hopper-v2 --exp_name bc_hopper --n_iter 1 \
--expert_data rob831/expert_data/expert_data_Hopper-v2.pkl \
--video_log_freq -1
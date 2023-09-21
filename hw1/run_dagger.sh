#!/bin/bash
python rob831/scripts/run_hw1.py \
--expert_policy_file rob831/policies/experts/Ant.pkl \
--env_name Ant-v2 --exp_name bc_ant --n_iter 10 \
--expert_data rob831/expert_data/expert_data_Ant-v2.pkl \
--do_dagger \
--video_log_freq -1

python rob831/scripts/run_hw1.py \
--expert_policy_file rob831/policies/experts/HalfCheetah.pkl \
--env_name HalfCheetah-v2 --exp_name bc_half_cheetah --n_iter 10 \
--expert_data rob831/expert_data/expert_data_HalfCheetah-v2.pkl \
--do_dagger \
--video_log_freq -1

python rob831/scripts/run_hw1.py \
--expert_policy_file rob831/policies/experts/Hopper.pkl \
--env_name Hopper-v2 --exp_name bc_hopper --n_iter 10 \
--expert_data rob831/expert_data/expert_data_Hopper-v2.pkl \
--do_dagger \
--video_log_freq -1

python rob831/scripts/run_hw1.py \
--expert_policy_file rob831/policies/experts/Humanoid.pkl \
--env_name Humanoid-v2 --exp_name bc_humanoid --n_iter 10 \
--expert_data rob831/expert_data/expert_data_Humanoid-v2.pkl \
--do_dagger \
--video_log_freq -1

python rob831/scripts/run_hw1.py \
--expert_policy_file rob831/policies/experts/Walker2d.pkl \
--env_name Walker2d-v2 --exp_name bc_walker2d --n_iter 10 \
--expert_data rob831/expert_data/expert_data_Walker2d-v2.pkl \
--do_dagger \
--video_log_freq -1

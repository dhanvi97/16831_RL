#!/bin/bash
python cs16831/hw4_part1/scripts/run_hw4_mb.py --exp_name q2_obstacles_singleiteration \
--env_name obstacles-hw4_part1-v0 --add_sl_noise --num_agent_train_steps_per_iter 20 --n_iter 1 \
--batch_size_initial 5000 --batch_size 1000 --mpc_horizon 10 --video_log_freq -1 \
--mpc_action_sampling_strategy 'random'
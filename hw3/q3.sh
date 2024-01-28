#!/bin/bash
python rob831/scripts/run_hw3_actor_critic.py --env_name InvertedPendulum-v4 \
--ep_len 1000 --discount 0.95 -n 100 -l 2 -s 64 -b 5000 -lr 0.01 \
--exp_name q3_10_10 -ntu 10 -ngsptu 10 --no_gpu
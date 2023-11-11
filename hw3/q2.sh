#!/bin/bash
python rob831/scripts/run_hw3_actor_critic.py --env_name CartPole-v0 \
-n 100 -b 1000 --exp_name q2_10_10 -ntu 10 -ngsptu 10 --no_gpu
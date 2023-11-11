#!/bin/bash
python rob831/scripts/run_hw3_dqn.py --env_name LunarLander-v3 \
--exp_name q1_dqn_1 --seed 1 --no_gpu
python rob831/scripts/run_hw3_dqn.py --env_name LunarLander-v3 \
--exp_name q1_dqn_2 --seed 2 --no_gpu
python rob831/scripts/run_hw3_dqn.py --env_name LunarLander-v3 \
--exp_name q1_dqn_3 --seed 3 --no_gpu

python rob831/scripts/run_hw3_dqn.py --env_name LunarLander-v3 \
--exp_name q1_doubledqn_1 --double_q --seed 1 --no_gpu
python rob831/scripts/run_hw3_dqn.py --env_name LunarLander-v3 \
--exp_name q1_doubledqn_2 --double_q --seed 2 --no_gpu
python rob831/scripts/run_hw3_dqn.py --env_name LunarLander-v3 \
--exp_name q1_doubledqn_3 --double_q --seed 3 --no_gpu
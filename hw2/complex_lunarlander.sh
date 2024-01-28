python rob831/scripts/run_hw2.py \
--env_name LunarLanderContinuous-v2 --ep_len 1000 \
--discount 0.99 -n 100 -l 2 -s 64 -b 10000 -lr 0.005 \
--reward_to_go --nn_baseline --exp_name q3_b10000_r0.005

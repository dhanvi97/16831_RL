## Code Documentation for HW1

### Overview

- The dataset is stored as pickle files in the `/expert_data` directory as a list of dicts
- Each dict is of the following structure
    - **Observation**: An (n,v) np array of n observations of (1,v) shape
    - **Action**: The (n,a) np array of actions (1,a) taken for the n observations
    - **Reward**: The (n,1) scalar array of reward values for the actions
    - **Next Observation**: (n,v) np array of outcome from action 
    - **Terminal**: Whether the action reaches a goal state - 0/1 

- The dict is an *episode*, where each `next_observation` is the consequent observation and it describes the full path taken till either termination or a maximum path length

### utils.py

- `sample_trajectory()` -> Reset the environment using env.reset(), which returns an observation. Using this, forward simulate it with the given policy, storing the obs and the actions till either the goal is reached or the max path length is achieved. Along the way, frames are rendered and stored in the image_obs array by the OpenAI Gym API

- `sample_trajectories()` -> Do rollouts till a certain number of timesteps have been covered per batch. Number of timesteps is simply the sum of the length of the paths 

- `sample_n_trajectories()` -> Collect `ntraj` rollouts into a list of paths

### MLP_Policy.py

- The main file containing the MLP PyTorch model to train the supervised learning problem

- The first class is MLPPolicy which extends the BasePolicy class to have the following methods
    - `init()` is the initialization of the network which is either discrete or not - (Only changes distribution of output in the forward pass)
    - `get_action()` takes a numpy array of observation as input and outputs the array of actions. This uses the `forward()` function and then transforms between `torch.Tensor` and ndarray
    - `forward()` is the forward pass for the network and returns a **differentiable probability distribution** given the observation. In this case, for discrete its a Categorical distribution whereas for continuous its a normal distribution with mean and std from the network
    - `update()` iterates over (observation, action) pairs fed into the network and computes the loss function and backprops to train the multi-layer perceptron network. (What loss function to use? Does it depend on discrete vs continuous?)

- The second class is `MLPPolicySL` which simply inherits the MLPPolicy class and adds a loss function and overloads the update function geared towards Supervised Learning - seems like a copy paste

### pytorch_util.py

- Util functions for pytorch used by MLP_policy.py
- `build_mlp()` is the main building function that returns an `nn.Sequential` object of the network based on the params fed to it. The architecture is a simple fully connected network with `tanh` activations for hiddden layers and identity for output layer
- `to_numpy()` and `from_numpy()`: helper functions to switch between tensors and numpy arrays for feeding into the various functions
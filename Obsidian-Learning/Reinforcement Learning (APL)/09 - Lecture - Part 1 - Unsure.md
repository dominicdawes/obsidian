[[incomplete]]
## Model Based vs Model Free

MPC Model Perception Control ?

Model based I faster, model free takes longer but is more performant

**Model based bootstrapping:**
- When Mb approach is used a good starting point for eventual Mf (model-free) training
- Phase 1: Mb $\to$ Phase 2: Mf

## Uncertainty-Aware Model-Based RL

A model type that uses entropy to simulate/estimate uncertainty

How to estimate model uncertainty?
- Bayesian Networks
- ⭐Bootstrap ensembles: 
	- train several models that are initialized differently
	- Use the ensemble to approximate uncertainty distribution of the next state given the current state and a current action 
	- The models are trained on different data Replay buffer $D$ yields several sampled sub buffers $D_i$
	- Usually uses about 10 models (NNs) to accurately est. uncertainty
Random Shooting (for ensembles)

$J() = \frac{1}{N} \sum \sum_{M=0}$

#### Takeaway
 model based RL with ensembles is:
 1. More performant than Mf approaches 
 2. More sample efficient than Mf approaches


## Complex Environment (moving past simple robo-gym environments)


Real world images are are more complex, more noisy, and filled with redundancy


### Latent space learning

???


### Stochastic Open-Loop Case

...

### Missing Title
Earlier decision made in the model trajectory, have a larger impact on the trajectory and 


## Mf RL with a Model

Using the model to generate synthetic data

* Long Simulation Rollouts: issues can occur when the rollout of simulated data can cause compounding error
* Short Simulation Rollouts: lower accumulated error, BUT you don't see the long tail of the timesteps

#### Dyna (algo from 1908s)

Mf Q learning with a Model

```
see slide 38 for pseudo code
```

There stats in addition to Dyna
- Model Based Acceleration (MBA)
- Model Based Value Expansion (MBVE)
- ...

## RL and Controllers

iLQR
- dd
- dd
- ⭐Add in noise to a learned LQR controller

The Dynamics of the system can also be models using Bayesian probability


### Guided Policy Search

local policies that are used as training for the larger global policy

Algorithm Overview
1. Local Models $\pi_{LQR}$ are optimized and generate training samples
2. Samples are used to train Global policy
3. Global policy updates the reward (or cost) functions (...using Lagrange Multiplier)
4. Repeat...
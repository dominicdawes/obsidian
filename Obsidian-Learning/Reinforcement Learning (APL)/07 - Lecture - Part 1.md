[[incomplete]]
## Recap 

DDPG
- Off policy learning
- Continuous actions

Similar in concept to AC methods (replay buffers, Q-functions, etc.)


Drawbacks
- Failure to model Q properly will result in poo policies
- Systematic overestimation

Fixes/Solutions
- Twin Network (double q-network)
- Twin Delayed DDPG (TD3)

## Build Upon DDPG

Twin Delayed DDPG (TD3)
- Stochastic policies
- Initialized 2 Q-Networks
- takes the $\min[Q_{est1}, Q_{est2},]$ of the q function estimates
	- reduces the bias that the policy estimate chooses from positive noise

Soft Actor Critic SAC

- Incorporates elements from Twin Delayed DDRP
- $\alpha$ is usually learn hyperparams to optimize Entropy for a certain level of exploration
	- entry helps address possible underestimation bias from taking the min(Q1, Q2)
- Also uses a reparameterization trick
- Excels in problems with high dimensional continuous action spaces


```
init policy pi
init Q-function (1 and 2) with phi1 phi2

```


### REDQ
- Estimate Q with more than 2 networks, and orchestrate them in an ensemble of estimates
- Q-estimation error
- Leads to more steps
- Then leads to more sample efficient learning


Resetting Approaches to Q-Learning

### Primacy Bias in RL
- Found that networks trained on earlier data had policies biased from those initial transition states
- Researchers found that resetting NN (while retaining the data from buffer \B) seems to work at removing primacy bias

### How far can you take resetting?

Study 1

SR-SAC performed better as replay ratio (RR) increased


Study 2

Reset Ratio RR = 8


Study 3

want to reduce srank
want to recude representational variance
want to ...

## Open AI Gym Examples
v 
#### Curbing Q over-estimation


Safety 


Constrained RL

- Reward and Cost given to the agent
- Uses Lagrange optimization (dual optim) to find things
- $Q_r - \beta Q_c$
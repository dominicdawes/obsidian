Date:

## Discount Factor

### Time Horizons
finite time horizon
- Atari game

Infinite
- Walking forward robot
- Episodes dont end in a known number of timesteps

### Discount factor $\gamma$
- as t --> \inf , V gets infinitely large
- usually $\gamma = [0.95 - 0.99]$
- $\gamma$ determines how much weight is given to future rewards. A higher $\gamma$ means future rewards are valued more, while a lower $\gamma$ means they are valued less. 
- it de-emphasizes the uncertainty of future events


## Actor-Critic Variants

### Batch and Online

batch AC is based on a sample of states and action R = {s. a}

online AC only relies on the 
#### Subsubtopic 1


## Compute and AC Algorithms

### Parallelization

#### Synchronous
* more stable but may be slower
![[Pasted image 20240930173309.png]]

#### Async
* faster but ( blank )
![[Pasted image 20240930173301.png]]

### Architecture

2 NNs for V and \pi
- is stable and simple but operates in silos and features are not shared between the networks

1 NN for V and \pi 
- may not ba as stable 
- fewer features that a 2 NN arch

## State Dependent Baselines ???

#### Eligibility traces (n-steps)
#### Generalized Advantage Estimation (GAE)


## Summary of A-C Learning

**Actor**: $\pi$  - brains/decision making of the agent
**Critic**: V - is an evaluation metric of the performance of the agent's policy
\
**How is the policy (\pi) evaluated?**
- Via the value network (a NN) where the inputs are the state vector at a certain time $s_t$ and the output is a probability distribution of the desired action to take.
	- Categorical Action Space
		- e.g. $\pi_{output}$ = {up: 0.92, down: 0.43, left: 0.10, right: 0.03}
		- action $a_t$ is taken via ***categorical sampling***
	- Continuous Action Space (e.g., propeller speed)
		- e.g. $\pi_{output}$ = {up: 0.92, down: 0.43, left: 0.10, right: 0.03}

**What is discount factor (\gamma)?**
- $\gamma$ enables infinite horizon 
- reduced variance

**AC Algorithm variants and system architecture**
- batch vs online
- sync vs async


## A-C In the Wild

### A3C (async advantage actor-critic)

### Subtopic 1

#### Subsubtopic 1

---
 Key Highlights
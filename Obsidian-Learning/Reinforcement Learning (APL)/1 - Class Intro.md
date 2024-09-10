### Intro to RL

No labels, no supervisor
Learning is done via ***reward*** signal
reward is given at each time step (typically)

![[Pasted image 20240909162051.png]]

Classical RL
- Similar to optimal control

Deep RL
- use NNs to approximate the reward function function $\pi(a_t|o_t)$
- the objective is to maximize the expected result defined my the reward function (can be visualized by the gradient ascent in 3D)

### Main Algorithms
$\theta^* = argmax( E_{\tau \sim p_{\theta}(\tau)}) r(\tau)$

> $E$, is the expectation function

1. Policy Gradient 
	1. pros:
	2. cons:
2. Value-based:
	1. estimate $Q$ (a value function) of the optimal policy
3. Actor-Critic
	1. estimate Q (values function)
4. Model-Based
	1. leverages synthetic experiences to


**Q Function**  - $Q(s,a)$
* Function of state and action 

**Value Function** - $V(s)$
- Dependent on state only
- expected reward I will get starting from S following an optimal policy
- assumes that the reward is already learned
![[Pasted image 20240909163442.png]]

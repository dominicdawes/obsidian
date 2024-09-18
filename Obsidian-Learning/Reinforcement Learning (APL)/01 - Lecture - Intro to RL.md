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

#### Q Function - $Q(s,a)$
* Function dependent on state and action 
* represents the expected cumulative reward an agent can obtain by taking a specific action 'a' in a particular state 's' and then following a specific policy
* It answers the question: "How good is it to take this action in a given state?"
* Q-learning typically seeks to find the optimal Q-values (maximize the $E$ ) for each state value pair using RL algorithms
* ***Q-function: Can be used to directly select the best action in a state***

**Q-Function General Form**
$Q(s, a) = E[R₁ + γR₂ + γ²R₃ + ... | S₀ = s, A₀ = a]$

where,
- R₁, R₂, etc. are rewards at each time step
- γ (gamma) is the discount factor (0 ≤ γ ≤ 1)
- S₀ is the initial state
- A₀ is the initial action
#### Value Function - $V(s)$
- Dependent on state only
- Expected reward $E$ the agent will get starting from $S_0$ following a specific optimal policy
- Assumes that the reward is already learned
- It answers the question: "How good is it to be in this state overall?"
- ***V-function: Doesn't directly tell you which action to take***

**Value Function General Form**
$V(s) = E[R₁ + γR₂ + γ²R₃ + ... | S₀ = s]$

**Overview**
In practice, the Q-function is often more useful for control tasks because it directly provides information about which actions are best in each state. The V-function is more commonly used in policy evaluation and theoretical analysis.

### Main RL Algorithms
$\theta^* = argmax( E_{\tau \sim p_{\theta}(\tau)}) r(\tau)$

> where,
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


![[Pasted image 20240909163442.png]]

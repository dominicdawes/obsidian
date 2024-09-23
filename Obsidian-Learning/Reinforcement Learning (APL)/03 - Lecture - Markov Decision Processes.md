
Sergei Levin (RL)

Markov Chain
- next state depends only on the current state
- p(next state | curr state)

fully observed state (dep on s)
partial observation (dependent on o only)

DRL
introduction of the reward $r_t$ at each timestep t
Reward is dispersed over time so as not to have a greedy agent (max r every time t)

MDP 
Introduces an action node. 
the state s_{t+1} depends on a_t and s_t

Policy $\pi$ is the prod distribution that governs the transition probability between a_t -> o_t


General form of policy

p(all transition for states for full episode T) 
= p(trans from 1st state) * $\Pi_{t=1}^{T}$ (policy  * policy(a|s) * p(s_t+1 | s_t, a_t) )


Defining Rewards R(t)

e.g. 
R(t) = - time_taken - collision + progress_dist + goal
for instance progress_dist could be: $C * (goal_dist - current_distance)$

Estimation of Q and V Functions

Estimating value from 1 -> T where state changes are governed by policy \pi_\theta
Recursion us used to estimate Q and V


What is Q?
Expectation of a reward from taking action a in state s_t

V; Value Function 
Total expected future reward given a state s_t

Relationship bt Q and V
$V\pi(s_t) = E_{a_t\sim \pi(a_t|s_t)}[Q(s_t,a_t)]$


### Use of Q and V in DRL

Meth 1: Q-Learning -- improvement of policy \pi by taking actions with highest A

Meth 2: Actor-critic --  (usually just learning the value function)

Steps in DRL

```
Run policy --> Estimate the return --> Improve policy --> (repeat)
```

#### Strategies
Policy Gradients: Estimating a policy gradient $\nabla J({\theta})$ explicitly through gradient ascent. Can be noisy and difficult to implement for complex systems.
- Performed optimization on the true objective (not a derivative like Q or V)
- Not sample efficient!!

**Value-based:** Estimate the optimal Q or V (not $\nabla J_{\theta}$), then the policy should (improve)
- Examples: Deep Q Learning

**Actor-Critic:** Learning the policy that leverages Q and V to more accurately estimate a policy gradient $\nabla J({\theta})$ 
- Advantage function: A = Q(s_t, a_t) - V(s_t)
-  $\nabla J({\theta}) = \Sigma\Sigma log * A(t)$
- Examples: Soft Actor Critic, Async Advantage Actor-Critic

**Model based (distinct from the other 3):** learn parameterized representation of a state transition model (T) and used this matrix T for action planning of $\pi$ improvement 
* Defining an action planning then using MB RL to find the state transition can be very efficient, and advantageous than simply learning a policy $\pi$

#### Cost Considerations


choosing models and tradeoffs

- Continuous vs discrete
	- Car driving vs Atari Buttons
- Stochastic vs deterministic
	- x  vs y
- Episodic vs infinite horizon
	- x vs continuous-nav
- Sample Efficiency vs Parallelizable
	- algo 1 vs algo 2 (multi thread)

#### On vs Off-Policy
on policy throws away data
- s

off policy keeps data from past runs
- good for sample efficiency ("replay buffer" is used when training a gradient) 

 
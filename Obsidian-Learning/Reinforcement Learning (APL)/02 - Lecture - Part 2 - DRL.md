## Reward function 

r(s, a) or c(s, a)  (cost)

maximize the reward (conversely min the cost)

$argmin( E_{1:T}[\Sigma_{1:T} cost])$


Add these assumption (w/o DAgger)
- "assume that the model does the wrong action << $\epsilon$"
- "assume the observation $o_t$ is outside of the training distribution, and we remain outside of the distribution for the remainder of time $T$"
- - the cost function once a mistake is made grows quadratically O(\epsilon t^2)


Add these assumption (w/ DAgger)
- "assume that the model does the wrong action << $\epsilon$"
- "assume the observation $o_t$ is outside of the training distribution, and we remain still within the distribution for the remainder of time $T$"
- the cost function once a mistake is made grows linearly $O(\epsilon t)$

feature based (represented a vectors)
image based 3d tensors fed into CNNs (e.g. Atari)
model based


### NN RL I/O
Output
Values (Q, V): linear activation 
Discrete (up, down, a, b, x, y): Soft max of possible actions
Continuous action policy: Linear Activation 
Model based


### Action Spaces
#### Discrete Action Space
- **Definition:** A finite set of choices available to the agent at each step.
- **Examples:** up, down, a, b, x, y (Atari)
-  **Acton selection:** To generate actions you can be:
	- Greedy, always choose the $argmax_a(Q)$
	- ε-Greedy Action Selection, agent chooses the greedy action with probability `1-ε` and a random action with probability `ε` to balance exploration and optimal choice
	- Softmax Action Selection
#### Continuous Action Space
- **Definition:** An infinite set of possible choices, typically within a specified range.
- typically $[-1, 1]$
	- e.g. Steering wheel turn in radians with limits from $[-95, 95 deg]$ sample from from a gaussian  $\mathcal{N}(x, \mu)$
	- **Acton selection:** To generate actions from a continuous space, it's common to sample from a probability distribution, such as a Gaussian distribution or a uniform distribution.
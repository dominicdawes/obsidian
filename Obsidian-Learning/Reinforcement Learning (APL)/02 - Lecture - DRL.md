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


NN RL I/O
Output
Values (Q, V): linear activation 
Discrete (up, down, a, b, x, y): Soft max of possible actions
Continuous action policy: Linear Activation 
Model based



Continuous
- typically $[-1, 1]$
	- e.g. Steering wheel turn in radians with limits from $[-95, 95 deg]$ sample from from $\mathcal{N}(x, \mu)$
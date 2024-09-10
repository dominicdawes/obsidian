

## Atari Deep-Q Learning

**States,** $(s)$: Based on pixel level data from the Atari Game (e.g. pong)
- a tensor of the for previous screens (to perceive object velocity)

**Action,** $(a)$: actions the agent can take
- i.e. 12 actions on the Atari controller

**Epoch**:
* e.g. 1,000 environment step

![[Pasted image 20240909165157.png]]



## Alpha Go

Used Monte Carlo Tree Search to simulate the possible paths to take (MCTS)

$(p,v) = f_{theta}(s)$

>
**States,** $(s)$: Based on 

$a = argmax( Q(s,a), C(s)P(s,a)*\frac{\sqrt{N(s)}}{1+N(s,a)} )$

> word explanation:
> a seeks to argmax(exploitation term, exploration term)



Used motegarlo tree search os simulate the popssible paths to take

pixel level data from the Atari Game (e.g. pong)
- a tensor of the for previous screens (to perceive object velocity)

**Action,** $(a)$: actions the agent can take
- i.e. 12 actions on the Atari controller
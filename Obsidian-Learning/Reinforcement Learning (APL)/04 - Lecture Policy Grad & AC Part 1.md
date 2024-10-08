
## Policy Gradient $\nabla_{\theta} J(\theta)$
Gradient of the cumulative reward $J(\theta)$
- directly differentiate the objective
- Evaluate with sampling

![[Pasted image 20241007152938.png]]
### Issues with Policy Gradient
 
#### Variance $\nabla_{\theta}J(\theta)$
- can yield a confused agent
- results in noisy actions being taken
- can be avoided if there is infinite training data (but that's never the case)

#### Data Hungry/Intensive
- large numbers on data
- slow training episodes

### Improving  Policy Gradient

#### Causality
- The policy at some time $t'$ cannot affect rewards (summation) at time $t$ if $t<t'$ (in other words  current events can't impact past rewards $R(t)$ )
- Shrink the reward function bounds from ($\Sigma_{i}^{T}$) ---> ($\Sigma_{now}^{T}$) can yield a confused agent

![[Pasted image 20241007153811.png]]
#### Baselines
- Purpose essentially "zero-means" the reward function
- Where b is a constant and does not change the Expectation E 
- ![[Pasted image 20240930163443.png]]

Here is the proof for the unchanged E:
![[Pasted image 20240930163625.png]]

![[Pasted image 20240930171813.png]]

## Actor Critic Approaches (A-C)

### Use of monte carlo simulation
MC sim is uses to smooth out the (  blank  )
Baseline 


Gradient calculated in A-C replaces $r(s,a)$ with $A(s, t)$ 
* Advantage (A) is lower variance
* A is fit using a neural net
* ![[Pasted image 20240930165833.png]]

Math behind A
* estimating A has fewer due to handwaving (bootstrapping) where Q is estimated by calculating expectation and the value at time t... $Q \approx E + V$

![[Pasted image 20240930170219.png|300]]


#### MC Evaluation & Bootstrapping

- MC Target  y = \Sigma r(s, a)\
- Ideal Target: ...

- the approximation of the "ideal target" is $y \approx r(s, a)+V(s_{t+1})$ this is biased however over several timesteps t the solution still converges, and is lower variance
- "bootstrapping" your ***current*** estimate based on your ***previous*** estimate


![[Pasted image 20240930171755.png|350]]



---

Terminology

![[Pasted image 20240930165610.png]]


[[incomplete]]
## Understanding Q-Learning algos

```python
def policy_iteration
while notConverged:
	
	Eval A
	# adsas
	pi = pi_prime


def value_iteration
'''learn q rather than the advantage'''
while notConverged:
	
	Q = r + gamma*E(V)
	
	V = argmax(Q)


def fitted_q_iteration:
'''learn q, rather than the advantage (A)'''

	def collect_dataset():
	'''collect of policy data buffer'''
		D = [(s, a, s_prime, r)]
		
	while notConverged:

		collect_data()
		
		for data in D:
			y = max (r + gamma*E(V))
			
			phi = argmin( sum((Q - y)^2) )
```




## Online Q

### Tabular Approach to Q-Learning

Bellman Operator

Bellman operator $B : BQ = r + \gamma T max_a Q$

Optimal Q* 
- always exists
- can prove that a Q iteration always reached Q* b/c $B$ is a *contraction*

There are math proofs that show that as BQ* converges you converge to Q* thus giving an optimal policy


### Non-Tabular Approach to Q-Learning

cant actually prove that there is a guarantee 

$B$ -- is a contraction relative to infinity norm
$\Pi$ -- is a contraction wrt l2-nomalization
$\Pi B$ -- is not guaranteed to be a contraction


**What does this mean?** 
Well its useful but there is not guarantee that if will always result in the 

### What is epsilon greedy policy in an action space???
ask GPT


```python
def online_q_iteration_Watkins:
'''Watkins takes a single step while full fitted q-algo uses the whole dataset'''
		
	while notConverged:
			
		y_i = max (r + gamma*E(V))
		
		phi = phi - alpha( sum_of_q_improvement)   # phi is the policy??
```

Full Q-Learning (Watkins) with a replay buffer samples from replay buffer D in batches B

```python
def q_iteration_watkins_with_buffer:
'''Watkins takes a single step while full fitted q-algo uses the whole dataset
	using a buffer does????
'''
		
	while notConverged:
		B = sample_buffer():
			for data in B:
				y_i = max (r + gamma*E(V))
				
				phi = phi - alpha( sum_of_q_improvement)
```

Issues: The issues here is that Q is always updating each loop and so its a moving target problem not a regression problem 

Solution: Target Networks


### Q-Learning Target Networks

Essentially freezes phi for a certain number of iterations and then updates to ensure that the algo isn't fitting to the wrong target

```python
def q_iteration_watkins_with_buffer:
'''Watkins takes a single step while full fitted q-algo uses the whole dataset
	using a buffer does????
'''
	phi = globally_tracked

	phi_prime = phi    # copy of target network
	for 10000 iter:
		while notConverged:
			B = sample_buffer():
				for data in B:
					y_i = max (r + gamma*E(V))
					
					phi_prime = phi_prime - alpha(sum_of_q_improvement)
```


The freeze of $\phi '$ is allows it to be static (temporarily) and allows the algo to converge on the true target, prevents overfitting

#### Double Q Learning 

Regular Q-learning seems to have the agent think its doing better than it is. I.e. high q-values but less impressive scores (in a game)
- because $argmax()$ is crucial in q-learning, its systematically predisposed to overestimate values of Q

Double-Q: using 2 Q's decouples the 
- Leverages ***target networks*** approach (that uses $\phi$ and $\phi'$) 
- The two $\phi$'s allows for the decoupling of the argmax() issue

#### N-Step Returns
not a clue??? GPT


### Implementation Tips

slide 41

Implement double q-learning, benefits are plenty


# Continnupus Action Spaces


Target value: $y = r(s_t, a_t) + \gamma * max (Q(s_{t+1}, a_{t+1})$


Diffucult to find Argmax(Q) for a continuous action space (much easier to do it for discrete)

Approaches
1. (Random shooting): Sample from a distribution then use it to optimize Q 
- good for small dim action space (fails if $dims>40$)

2. Easy to max Q function
- quadratic forms of Q

3. ⭐Deterministic policy gradient


### Deep Determ Po Grad DDPG


train a similar network \mu \approx argmax(Q(s, a))

```python
'''applies q learnign to continous action spaced'''
```




loss Q

theta? 

a? action


## Q-Algo Architectures cont'd

### Dueling Architecture 
- separating out Value from Advantage yielded more robust results 
- slide 52

### Prioritized Experience Replay
* Some experiences are more important than other
* Buffer is sampled for (       blank        ) experiences

### Hon. Mentions

- C51
- Implicit Quantile Network (IQN)

## Rainbow Q Learning

- Combine lots of Q-learning techniques to a vanilla DQN
	- Double Q
	- N-Step
	- Dueling
	- Prioritized Replay Buffer
	- ...
	- Noisy Nets
- Then do an ablation study to see what techniques contributed the most to gain



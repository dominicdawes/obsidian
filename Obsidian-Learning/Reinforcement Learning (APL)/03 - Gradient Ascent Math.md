

Discount factor & observability
- role: use in agent forgetting over time



REINFORCE Algorithm
- assume full observably
- assume episodic in nature (t = 1->T)

Objective J
$J(\theta) =  E [\Sigma r(s, a) ] \approx \frac{1}{N} \Sigma\Sigma r(s, a)$

(sum of samples over $p(\theta)$)


... calc 2 identity to calculate the gradient of $J(\theta)$


$\nabla J(\theta) =  \nabla(E [\Sigma ])$ --> $J(\theta) =  E_{exp-of-trajectories} [\nabla(\Sigma_i\Sigma_j()) ]$ 
(gradient of an expectation becomes the expectation of a gradient)
Lecture 3 Part 2

Discount factor & observability
- role: use in agent forgetting over time


REINFORCE Algorithm
- assume full observably
- assume episodic in nature (t = 1->T)

Objective J
$J(\theta) =  E [\sum r(s, a) ] \approx \frac{1}{N} \sum\sum r(s, a)$

(sum of samples over $p(\theta)$)


... calc 2 identity to calculate the gradient of $J(\theta)$


$\nabla J(\theta) =  \nabla(E [\sum ])$ --> $J(\theta) =  E_{exp-of-trajectories} [\nabla(\sum_i\sum_j()) ]$ 
(gradient of an expectation becomes the expectation of a gradient)
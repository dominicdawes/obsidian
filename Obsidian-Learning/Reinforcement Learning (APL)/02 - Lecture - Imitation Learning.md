

$\pi$ is the network itself
- outputs can be categorical or continuous sampled variables

```
observation --> { Policy Model } --> Action 
```

note: policy model is run on frames or sensor data at K Hz

State vs Observation
s_t vs o_t

Partially Observed Markov Decision Process (POMDP)
* $p(s_n | s_n-1, a_n-1)$
* only looks back one time step (context window of 1)

## Policy Model Types

### Imitation Learning (Behavioral Cloning)

Pitfalls: 
- Compounding errors b/t policy and training data, causes gradient drift (distribution mismatch) 
	- How can this be minimized?
		- Data augmentation (changes in view, orientation, etc...)
		- Include mistakes in the data
		- Dagger - address the training data distro imbalance
		- Use of a stable controller to gen data



#### DAgger Dataset Aggregation (ross et al 2011)
***read dagger paper

Used to make $p_{data}(o_t) = p_{\pi_{\theta}}(o_t)$ converge

Steps:
1. ***Train*** agent based on 
2. ***Run agent $\pi_\theta$*** to produce observation
3. Relabel new real-world observations with "expert" actions $D_\pi$ 
4. Aggregate: $D$ and $D_\pi$ (original set and new labeled obs)

Pitfalls of DAgger
* "Expert-in-loop" can be costly and time consuming
* Errors when it is used on non-Markovian data (context > t time step)
* Also fails when data/distribution in multimodal

**New Methods in Imitation Learning**
- Transformers (in the past RNNs) used history and context to model actions in non-Markovian situations.
- Can suffer from not understanding causality (brake light example) 
	- Causal confusion in imitation learning (2019)
#### Mitigation (to 2+ "best cases"):
Goal: give it sufficuently expresivly policy gradient to handle lots of cases
 - mixed gaussians instead of single gaussian(unimodal modeling)
 - Latent variable model
 - Using diffusion models to model a policy

#### Using diffusion Model Policy
- add noise and a model learns the reverse to denoise an image 
- In RL this noise is actions. thus the policy model learns how to imitate learning by learning the sequence of actions to arrive at the denoised result (i.e the correct action)
	- paper see [[Diffusion Policy]] (columbia edu)


### Autoregressive Discretization


Multi-task modeling & Goal-conditioned Imitation Learning
give policy several goals as a prior condition (1, 2, ... N)
Each successful example that reaches a goal

Steps in process ("learning from playing")
1. random policy init
2. collect random goals
3. treat random goal as successful
4. Use those examples as new training data


Limitations of IL
- need for lots of human experts, costly
- where there is not expert human
- Not autonomus enough, human-in-the-loop


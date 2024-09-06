Tags: [[Fine Tuning]], [[Foundation Models]], [[LoRA]], [[Dimension Reduction]], [[Parameter Efficient Fine Tuning]], [[Matrix Math Concepts]]

Authors: [[Edward Hu]], [[Yelong Shen]], [[Phillip Wallis]], [[Zeyuan Allen-Zhu]], [[Yuanzhi Li]], [[Shean Wang]], [[Lu Wang]], [[Weizhu Chen]]

Institutions: [[Microsoft]], [[OpenAI]]

Links: [arxiv.org](https://arxiv.org/abs/2106.09685), [Lora Explained by Edward Hu](https://www.youtube.com/watch?v=DhRoTONcyZE), [LoRA Paper Explained](https://www.youtube.com/watch?v=t509sv5MT0w)

#### Why LoRA exists?
- In a sentence: "parameter efficient finetuning"
- LoRA was born out of the need to fine tune models in a cost effective manner. For instance, fine-tuning through gradient updates for a single model training checkpoint for a 175B Param Model would be >1TB of memory (and several 💸💸 worth of budget). 

#### Other Fine-tuning Methods (PEFT)
- Fine tune last layer
- Adapter layers
- Prefix Tuning

#### LoRA Intuition

**In Simple Terms**
- Think of it like the Pareto Principle (80-20 rule). 20% of the weights will yield 80% of the performance gains in fine tuning. (although 80 and 20 are just illustrative numbers) [^1]
- LoRA fine tuning that takes into question (1) how many params really need to be fine tuned and (2) determine how expressiveness the weigh matrix should be (i.e. in terms of [[Matrix Rank Explained|matrix rank]])

**Dimensional Reduction**
* LoRA reduces the rank of certain weight matrices in neural networks to make them more efficient. The idea is that these lower-rank matrices can still capture the most important patterns in the data while being less computationally expensive


![[Pasted image 20240904113338.png|600]]
*Figure:* Shows that LoRA can maintain validation acc. with fewer trained params than full fine-tuning

### Technical Details

###### Paper's Proposed Solution
We propose Low-Rank Adaptation, or LoRA, which freezes the pre-trained model weights and injects trainable rank decomposition matrices into each layer of the Transformer architecture, greatly reducing the number of trainable parameters for downstream tasks

###### Rank Decomposition
The goal of rank decomposition is to represent \Delta W by using a combination of [[Matrix Rank Explained#Definition#Low Rank|low rank matrices]].

> *Equation...*  $W_0 + \Delta W = W_0 + B*A$

Where $B$ and $A$ are low rank are matrices, and $W_0$ is the original weight matrix. In a toy example,  $W_0$ could be 200x200, $B$ could be (200, 2) and $A$ could be (2, 200). $B$ is typically init with 0's and $A$ is populated with values from $N(μ,σ)$

*recall: (200, 2) x (2, 200) = (200, 200)*


###### Hyperparameters

![[Pasted image 20240904152740.png]]




---
### References

[^1]: [[Intrinsic Dimensionality Explains the Effectiveness of Language Model Fine-Tuning]]
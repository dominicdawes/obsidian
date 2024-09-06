Tags: [[Matrix Math Concepts]], [[LoRA]]

in the context of ML...


#### Definition
- ***Matrix Rank*** is the maximum number of **linearly independent rows or columns in the matrix**. In simpler terms, it's the number of dimensions or directions in which the matrix can "move" or "span."
- A higher rank means that the matrix can represent more complex patterns or relationships.

![[Pasted image 20240904130049.png|700]]

###### Low Rank
- when a matrix's rank is lower that the minimum number of dimensions i.e. $rank(A) << min(m, n)$

#### Intuition
- In ML, "expressiveness" refers to the ability of a model to capture and represent complex data patterns or relationships. (therefore high rank weight matrices are able to capture more)
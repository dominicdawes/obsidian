#### Background
Embedding Vector $E$
- Words (or image patches) are tokenized and represented as high dimensional vectors (i.e. very long vectors). On the order of tensor.shape(1, 12288)
- $\vec{E_1}$ is context free. e.g. "dog" is context free, while "big dog" is $\vec{E_1}, \vec{E_2}$ but has added context of the word before


![[Pasted image 20240911135709.png|400]]

#### So What Attention
***Definition***: Attention moves high-dim information from one embedding(s) to that of another embedding.

$Attention(Q, K, V) = softmax( \frac{QK^T}{\sqrt{d_k}} )V$

> Attention is a function of $Q$, $K$, $V$ where it is the $softmax$ (norm values from 0.0-1.0) of
> the dot product of the $K$ and $Q$ matrix arrays, multiplied by $V$

- Attention seeks to shift (via matrix mult) the position of the embedding vector so that its "new direction" is the correct context aware position. 
- For instance, in "Eiffel `Tower`" attention mechanism is aware of the presence of Eiffel and this shifts "tower" over to a more specific high-dim position 🥐

![[Pasted image 20240911140018.png|400]]



Query $Q$
A smaller vector (smaller than the embedded token vector $\vec{E}$). $Q$ is calculated for each token (or image patch) vector. It helps to think of Q as a "search vector that is looking for (K) that has relevant features pertaining to itself?" i.e. $Q$ for "fries" will find a strong similarity score with the $K$ of "salty" and "fresh-cut"
`tensor.shape(128, 12288)`

Key $K$
Also a smaller vector (smaller than the embedded token vector $\vec{E}$). "Answers the Q matrix question". A Q (query) matches a K (key) when they are in positional alignment (think cosine similarity or dot product). 
`tensor.shape(128, 12288)`

To visualize the $Q$-$K$ relationship is via an Attention Pattern grid (seen below).  $Q$-$K$ represents how ***much*** a previous vector should factor influence the current next token $E$

![[Pasted image 20240911142020.png|350]]


Value $V$
- The value vector is the vector that encodes the shift of an embedding vector, that will then make $\vec{E}$ context aware
- Also a is a high-dim vector (same dim as $\vec{E}$) that when you multiply $\vec{E_{dog}} * \vec{V_{red}}$ the resultant vector points in a similar direction to "Clifford"
- V is actually Low rank (see [[LoRA]]) transformation of 2 smaller matrices 
`V = tensor.shape(12288, 128)*tensor.shape(128, 12288)`
`V = tensor.shape(12288, 12288)`

**Pseudo-equation for attention**:

$Attention_{red -> dog} \approx$ (Weight of attention)(Vector of context)

$Attention_{red -> dog} \approx ( \vec{Q_{dog}} * \vec{K_{red}}) \vec{V_{red}} = \Delta{\vec{E}}$ 

thus, the embedding for dog is changes to be context aware,
$\vec{E}_{dof}' =  \vec{E}_{dog} + \Delta{\vec{E}_{attn}}$ 

![[Pasted image 20240912133027.png|600]]

### Attention Heads (Self, Single, Cross, and Multi)

#### Self Attention 
from what I gather a self-attention head (the update of $\vec{E}_{i->n}$ due to surrounding context) concerns full context window that's fed into the model.

*remember that base foundation models are simply next token predictors

![[Pasted image 20240912171345.png]]

#### Multi-Headed Attention 
Several self-attention blocks that are computed in parallel. So if a single attention head proposed a certain embedding adjustment $\Delta{\vec{E}}$, multi-headed attention computes (in the case of GPT3 with 96 attention heads) $n$-versions of $\Delta$'s to shift E and create a new embedding.

**Pseudo-equation form**
>
> $\vec{E}_i' = \vec{E}_i+\Delta{\vec{E}}^{(1)}_i + \Delta{\vec{E}}^{(2)}_i + ... + \Delta{\vec{E}}^{(96)}_i$ 
> 
> where, $E_i$ represents a embedding for a single token at position $i$ 
> in a sequence of tokens in the context window $i=1->n$


![[Pasted image 20240912173456.png|600]]

#### Cross Attention
Similar to self attention with the difference being that key and query pertain to different datasets/domains (i.e. fr-eng, text-audio). In pseudo form $Attn \approx (Q_{eng}*K_{fr})V_{eng}$
![[Pasted image 20240912171442.png]]
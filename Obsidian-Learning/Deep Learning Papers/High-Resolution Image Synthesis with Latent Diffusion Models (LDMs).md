
Tags: [[Generative AI]], [[Diffusion Models]], [[Computational Efficiency]]

Links: [(arxiv.org)](https://arxiv.org/abs/2112.10752), [(github.com)](https://github.com/CompVis/latent-diffusion)

Institution: [[Ludwig Maximilian University of Munich]]

Key Authors: [[Robin Rombach]], [[Andreas Blattmann]], [[Dominik Lorenz]], [[Patrick Esser]], [[Björn Ommer]]

Year: Apr 2022


| *What They Did?* (overview)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | *What was the result?*                                                                                                                                                                                                                                                |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Enabled training of Diffusion Models (DMs)[^1]  on limited compute                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Our latent diffusion models (LDMs) achieve new state-of-the-art scores for (image inpainting and class-conditional image synthesis, text-to-image synthesis, super-resolution...) while significantly reducing computational requirements compared to pixel-based DMs |
| ***How they did it? (method brief)***                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | ***Conclusions / Drawbacks***                                                                                                                                                                                                                                         |
| - Applied them (DMs) in the latent space of powerful pretrained autoencoders (LDMs). In contrast to previous work, training diffusion models on such a representation allows for the first time to reach a near-optimal point between complexity reduction and detail preservation, greatly boosting visual fidelity.<br><br>- By introducing cross-attention layers into the model architecture, we turn diffusion models into powerful and flexible generators for general conditioning inputs such as text or bounding boxes and high-resolution synthesis becomes possible in a convolutional manner | While LDMs significantly reduce computational requirements compared to pixel-based approaches, their sequential sampling process is still slower than that of GANs. Moreover, the use of LDMs can be questionable when high precision is required                     |


### Main Idea

content...

### Training Details

Training is broken up into 2 parts:
	**Perceptual Compression:** removal of high-frequency details but still learns little semantic variation
	**Semantic Compression:** generative model learns the semantic and conceptual composition of the data

##### Phase 01 - Compressing Images into Latent Space
* Images are compressed into lower dim latent space (computation efficiency) 
* A decoder is trained to fully recover high quality images from this latent space (pretty standard ML stuff so far). The decoder comes in later
* The notable advantage of this approach is that we need to train the universal autoencoding stage only once and can therefore reuse it for multiple DM trainings

##### Phase 02 - Latent Space Recovery
* A DM is then trained to recover the latent representation of an image from Gaussian noise (as opposed to the full high quality image). This saves on compute.\
* In the latent space, likelihood-based generative models can focus on the important, semantic bits of the data instead of sifting through high level pixel data as well

##### Phase 03 - Latent Representation Generation
- Once fully trained on latent space recovery from noise. The LDM can generate the latent space representation of any prompted image
- The decoder is then used to recover the full image in pixel space

```
[Gaussian Noise N(μ,σ)] ---> [Latent Representation] ---> [Decoded Image]
```

### Model Architecture

**Autoencoder**
The autoencoder was trained by combination of a perceptual loss and a patch-based adversarial objective. This ensures that the reconstructions are confined to the image manifold by enforcing local realism and avoids blurriness introduced by relying solely on pixel-space losses such as L2 or L1 objectives.

**Denoising Model**
The core of the denoising network is a denoising U-Net modified to operate in the latent space,. U-Net is effective at (1) capturing multi-scale features, (2) Balances local and global context, (3) Proven architecture in various image-to-image tasks.


### Gaps in Lit

content...



### Footnotes

[^1]: [[Denoising Diffusion Probabilistic Models (DDPM)]]
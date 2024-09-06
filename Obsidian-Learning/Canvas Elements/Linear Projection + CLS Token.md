(1, Patch_Num+CLS, Pixel_Len) ---> (1, Patches+CLS, D)

Linear projection projects the pixel values (flattened) into a higher dimensional space. This is done via a weight matrix $W$ with shape (Patches+CLS, D). $W$ is initialized with Xavier Initialization.

> Note: dimension $D =  515$ or $768...$

![[Pasted image 20240905165855.png|400]]

[ViT Blogpost](https://www.pinecone.io/learn/series/image-search/vision-transformers/)
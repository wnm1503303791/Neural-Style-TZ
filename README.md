# Neural-Style-TZ

Last modified @ 2019/11/19

## contributor
tuzhuo @ croplab, HZAU

## operating environment:
1. Intel(R) Xeon(R) Gold 6140 CPU @ 2.30GHz * 2 (36 cores)
2. Tesla P100-PCIE-16GB * 2
3. 512GB RAM
4. tensorflow-gpu, NumPy, SciPy, Pillow, CUDA, imagenet-vgg-verydeep-19.mat
5. for a 1200*950 pixel image, with the environment above, it only takes 5 mins for 1000 iterations. Using a GPU is highly recommended due to the huge speedup.

## performance:

### source image
<img src="content/nju-1.jpg" width="420">

### style transfer 1

<img src="style/14.jpg" width="420">
<img src="result/result-nju-14.jpg" width="420">

### style transfer 2

<img src="style/1.jpg" width="420">
<img src="result/result-nju-1.jpg" width="420">

### style transfer 3

<img src="style/13.jpg" width="420">
<img src="result/result-nju-13.jpg" width="420">

### style transfer 4

<img src="style/15.jpg" width="420">
<img src="result/result-nju-15.jpg" width="420">

### style transfer 5

<img src="https://gss2.bdstatic.com/9fo3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike150%2C5%2C5%2C150%2C50/sign=73c1d6fbcc5c10383073c690d378f876/9a504fc2d56285357f4c04c09aef76c6a6ef63a7.jpg" width="420">
<img src="result/result-nju-17.jpg" width="420">

### style transfer 6

<img src="https://gss3.bdstatic.com/7Po3dSag_xI4khGkpoWK1HF6hhy/baike/c0%3Dbaike272%2C5%2C5%2C272%2C90/sign=de662d9a73ec54e755e1124cd851f035/9825bc315c6034a8a1861825c31349540923762a.jpg" width="420">
<img src="result/result-nju-18.jpg" width="420">

## Appendix
[source project](https://github.com/anishathalye/neural-style)

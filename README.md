# manifold-learning-spike-sorting
**Source code for the tutorial on how to use low-dimensional embedding (i.e. ISOMAP algorithm) for feature extraction in spike sorting**

**A short Intro**

Background noise and spike overlap pose problems in contemporary spike-sorting strategies. The (non-linear) isometric feature mapping (ISOMAP) technique reveals the intrinsic data structure and helps identifying active neurons.

[Isomap is a Nonlinear dimensionality reduction method](https://en.wikipedia.org/wiki/Isomap), used for computing a quasi-isometric, low-dimensional embedding of a set of high-dimensional data points. The algorithm provides a simple method for estimating the intrinsic geometry of a data manifold based on a rough estimate of each data point’s neighbors on the manifold. Isomap is highly efficient and generally applicable to a broad range of data sources and dimensionalities.

[The tutorial is available here](http://neurobot.bio.auth.gr/2013/using-isomap-algorithm-for-feature-extraction-in-spike-sorting). Therein, simulated spikes from 3 neurons, one being a sparsely-firing one, are used.


To reproduce this tutorial in MATLAB you will need :

1. [The ISOMAP source code](http://neurobot.bio.auth.gr/src/IsomapR1.zip) for MATLAB that was used in this tutorial. (for more information and updated version [see here](http://isomap.stanford.edu) )

2. Memo script for MATLAB and sample data to reproduce the results shown in the tutorial.


**Notes**
- Changing the ‘k’ value will affect the output of the algorithm, i.e. projecting the data in ISOMAP space. 
- Projection coordinates are kept in ‘Y’. ‘R’ denotes residual variance.

For further details and to cite this work, see:

**Adamos DA**, Laskaris NA, Kosmidis EK, Theophilidis G. “[NASS: an empirical approach to spike sorting with overlap resolution based on a hybrid noise-assisted methodology](http://dx.doi.org/10.1016/j.jneumeth.2010.04.018)“. Journal of Neuroscience Methods 2010, vol. 190(1), pp.129-142.  

For more information on spike sorting algorithms see: [http://neurobot.bio.auth.gr/spike-sorting](http://neurobot.bio.auth.gr/spike-sorting)

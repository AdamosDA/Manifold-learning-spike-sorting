# manifold-learning-spike-sorting
**Source code for the tutorial on how to use low-dimensional embedding (i.e. ISOMAP algorithm) for feature extraction in spike sorting**

**A short Intro**

Background noise and spike overlap pose problems in contemporary spike-sorting strategies. The (non-linear) isometric feature mapping (ISOMAP) technique reveals the intrinsic data structure and helps identifying active neurons.

To reproduce this tutorial in MATLAB you will need :

1. The included ISOMAP source code for MATLAB (for more information and updated version [see here](http://isomap.stanford.edu)

2. Memo script for MATLAB and sample data to reproduce the results shown in the tutorial.

[The tutorial is available here](http://neurobot.bio.auth.gr/2013/using-isomap-algorithm-for-feature-extraction-in-spike-sorting)

**Notes**
- Changing the ‘k’ value will affect the output of the algorithm, i.e. projecting the data in ISOMAP space. 
- Projection coordinates are kept in ‘Y’. ‘R’ denotes residual variance.

For further details and to cite this work, see:

**Adamos DA**, Laskaris NA, Kosmidis EK, Theophilidis G. “[NASS: an empirical approach to spike sorting with overlap resolution based on a hybrid noise-assisted methodology](http://dx.doi.org/10.1016/j.jneumeth.2010.04.018)“. Journal of Neuroscience Methods 2010, vol. 190(1), pp.129-142. |  

For more information on spike sorting algorithms see: [http://neurobot.bio.auth.gr/spike-sorting](http://neurobot.bio.auth.gr/spike-sorting)

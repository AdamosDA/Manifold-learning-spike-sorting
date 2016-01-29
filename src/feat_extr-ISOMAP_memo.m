% - Matlab memo for using ISOMAP for feature extraction in spike sorting -
% 
% If you find this useful, please cite: 
%
% [1] Adamos et al.,"NASS: an empirical approach to spike sorting with overlap resolution 
% based on a hybrid noise-assisted methodology", J Neurosci Methods (2010) vol.190(1), pp. 129-42
% http://dx.doi.org/10.1016/j.jneumeth.2010.04.018
% 
% For more information see: http://neurobot.bio.auth.gr/spike-sorting/


% load waveforms
% Note. The number of waveforms has been kept small to facilitate efficient processing
load spikes.mat;


% Let us take a look at the data set first
figure(3);hold;grid;
% 300 spikes for neuron no.1 (lines 1-300)
plot(spikes(1:300,:)','b');
% 300 spikes for neuron no.2 (lines 301-600)
plot(spikes(301:600,:)','r');
% 50 randomly overlapping spikes between neurons no.1 and no.2 (lines 601-650)
plot(spikes(601:650,:)','g');
% 30 spikes for neuron no.3 (lines 651-680)
plot(spikes(651:680,:)','y');


% Apply Isomap
clear D Y R E;
D = L2_distance(spikes',spikes',1);

options.overlay=0;
options.dims=1:10;
options.display=0;
options.landmarks=1:680;

% Changing the 'k' value will affect the output of the algorithm, 
% i.e. projecting the data in ISOMAP space. For details see [1]
[Y, R] = IsomapII(D, 'k', 200, options);

% Projection coordinates are kept in 'Y'. 'R' denotes residual variance.
% For details see [1]
[rx,ry]=min(R);
REDUCED_DIMENSIONALITY=ry;

% Plot projections in 3D Isomap space
figure(2);hold;grid
plot3(Y.coords{3}(1,1:300),Y.coords{3}(2,1:300),Y.coords{3}(3,1:300),'.b','markersize',8);
plot3(Y.coords{3}(1,301:600),Y.coords{3}(2,301:600),Y.coords{3}(3,301:600),'.r','markersize',8);
plot3(Y.coords{3}(1,601:650),Y.coords{3}(2,601:650),Y.coords{3}(3,601:650),'.g','markersize',8);
plot3(Y.coords{3}(1,651:680),Y.coords{3}(2,651:680),Y.coords{3}(3,651:680),'.y','markersize',8);


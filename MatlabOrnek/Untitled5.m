

clear all
close all
load ionosphere
% 
% X = meas;    
% Y = species; 
rng(10); % For reproducibility
Mdl = fitcknn(X,Y,'NumNeighbors',2);


rloss = resubLoss(Mdl)


CVMdl = crossval(Mdl);

kloss = kfoldLoss(CVMdl)
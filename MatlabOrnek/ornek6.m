% Generate random data points
X = randn(100,2);

% Specify the number of clusters and the value of k
k = 5;
num_clusters = 3;

% Perform k-NN clustering using the fitcknn function
mdl = fitcknn(X,ones(size(X,1),1),'NumNeighbors',k,'Distance','euclidean','NSMethod','exhaustive','DistanceWeight','equal','BreakTies','random');

% Predict the cluster assignments for each data point using the predict function
y = predict(mdl,X);

% Plot the results
figure;
scatter(X(:,1),X(:,2),30,y,'filled');
title('k-NN Clustering Results');
xlabel('Feature 1');
ylabel('Feature 2');





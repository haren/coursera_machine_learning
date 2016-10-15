function centroids = computeCentroids(X, idx, K)
%COMPUTECENTROIDS returs the new centroids by computing the means of the
%data points assigned to each centroid.
%   centroids = COMPUTECENTROIDS(X, idx, K) returns the new centroids by
%   computing the means of the data points assigned to each centroid. It is
%   given a dataset X where each row is a single data point, a vector
%   idx of centroid assignments (i.e. each entry in range [1..K]) for each
%   example, and K, the number of centroids. You should return a matrix
%   centroids, where each row of centroids is the mean of the data points
%   assigned to it.
%

% Useful variables
[m n] = size(X);

% You need to return the following variables correctly.
centroids = zeros(K, n);


% ====================== YOUR CODE HERE ======================
% Instructions: Go over every centroid and compute mean of all points that
%               belong to it. Concretely, the row vector centroids(i, :)
%               should contain the mean of the data points assigned to
%               centroid i.
%
% Note: You can use a for-loop over the centroids to compute this.
%

% for each centroid:
% 	get from X where idx == currentr centroid, length m
% 	compute 1/m * sum of m
% end

for c = 1 : K
	current_cluster = [];
	for i = 1 : size(idx)
		if c == idx(i)
			current_cluster = [X(i, :); current_cluster];
		end
	end
	disp(size(current_cluster));
	disp(size(current_cluster, 1));
	disp(sum(current_cluster));
	disp('<<<<<<<<<<<<<<');
	centroids(c, :) = 1 / size(current_cluster, 1) .* sum(current_cluster);
	disp(centroids(c));
end

% =============================================================


end


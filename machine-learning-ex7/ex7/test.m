


function centroids = computeCentroids(X, idx, K)

    [m n] = size(X);
    centroids = zeros(K, n);

    for class_index = 1:K
        class_index_X = zeros(1, n);
        isFirst = true;
        for i = 1:m 
            y_label = idx(i);
            if y_label == class_index 
                xi = X(i, :);

                if isFirst
                    isFirst = false;
                    class_index_X = xi;
                else 
                    class_index_X = [class_index_X; xi];
                end 
            end
        end
        centroids(class_index, :) = mean(class_index_X);
    end
end
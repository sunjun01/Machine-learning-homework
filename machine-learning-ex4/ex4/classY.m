function [BYi] = classY(Yi, num_labels)
    BYi = zeros(1, num_labels);
    BYi(1, Yi) = 1;
end
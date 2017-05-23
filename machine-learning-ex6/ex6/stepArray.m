function [array] = stepArray(firstNumber, endNumber, step)
    n = (endNumber - firstNumber) / step;
    array = zeros(1, n);
    for i = 0:n - 1
        inputNumber = firstNumber + i * step;
        array(i + 1) = inputNumber;
    end
end
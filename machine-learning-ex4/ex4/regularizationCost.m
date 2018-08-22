function r = regularizationCost(Theta1, Theta2, lambda, m)

input_layer_size = size(Theta1, 2); %401
hidden_layer_size = size(Theta1, 1); %25
output_layer_size = size(Theta2, 1); %10

sumForTheta1 = 0;
sumForTheta2 = 0;

for j = 1 : hidden_layer_size
  for k = 2 : input_layer_size
    sumForTheta1 = sumForTheta1 + ( Theta1(j, k) * Theta1(j, k) );
  end
end

for j = 1 : output_layer_size
  for k = 2 : (hidden_layer_size + 1)
    sumForTheta2 = sumForTheta2 + ( Theta2(j, k) * Theta2(j, k) );
  end
end

r = (lambda / (2 * m) ) * (sumForTheta1 + sumForTheta2);

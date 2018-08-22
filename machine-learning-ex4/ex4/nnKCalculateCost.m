function c = nnKCalculateCost(yK, hK)

a = log(hK) * -yK';
b = log(1 - hK) * (1 - yK');

c = a - b;

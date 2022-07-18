function output = calc_f (t, x)
    alfa1 = 0.8;
    alfa2 = 0.7;
    beta1 = 0.1;
    beta2 = 0.3;

    vector(1) =  alfa1 * x(1) - beta1 * x(1) * x(2);
    vector(2) = - alfa2 * x(2) + beta2 * x(1) * x(2);

    output = vector';
end
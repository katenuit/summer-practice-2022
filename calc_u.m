function output = calc_u (t, x)
    alfa1 = 0.8;
    alfa2 = 0.7;
    beta1 = 0.1;
    beta2 = 0.3;
    T1=0.9;
    T2 = 1;
    x2const = 3;
    
    phi = (alfa2*x(2) - (1/T2) * (x(2) - x2const))/(beta2 * x(2));
    f1 = alfa1 * x(1) - beta1 * x(1) * x(2);
    f2 = - alfa2 * x(2) + beta2 * x(1) * x(2);
    phi2 = (x2const / (T2 * beta2 * x(2) * x(2))) * f2;
    e = - 1/T1 * (x(1) - phi) - f1 + phi2;
   
    u(1) = e;
    u(2) = 0;
    
    output = u';
end
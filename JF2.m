function JF = JF2(x)
    % Parametros
    p = 0.1; M = 1; mu = 0.00001; rho = 0.00002; theta = 0.005; omega = 0.05; gamma = 0.001;
    beta1 = 0.0000009; beta2 = 0.00000093;
    alpha1 = 0.00000167; alpha2 = 0.000067;
    
    % Variaveis
    S = x(1); 
    E = x(2); 
    I = x(3);
    Q = x(4);
    V = x(5);
   
    % Matriz Jacobiana 

    JF = [
    -beta1*E - beta2*I - (rho + mu), -beta1*S, -beta2*S, 0, 0;
    beta1*E + beta2*I, beta1*S - (omega + alpha1 + mu), beta2*S, 0, 0;
    0, omega, -(gamma + alpha2 + mu), 0, 0;
    0, alpha1, alpha2, -(theta + mu), 0;
    rho, 0, gamma, theta, -mu
    ];

end
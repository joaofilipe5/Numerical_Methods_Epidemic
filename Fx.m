function F = Fx(x)
    % Parametros 
    p = 0.1; M = 1; mu = 0.00001; rho = 0.00002; theta = 0.005; omega = 0.05; gamma = 0.001;
    beta1 = 0.0000009; beta2 = 0.00000093;
    alpha1 = 0.0001; alpha2 = 0.004;
    
    % Variáveis
    S = x(1);
    E = x(2); 
    I = x(3);
    Q = x(4);
    V = x(5);

    % Sistema de equações do problema 

    F = [
        p*M - beta1*S*E - beta2*S*I - (rho + mu)*S;
        beta1*S*E + beta2*S*I - (omega + alpha1 + mu)*E;
        omega*E - (gamma + alpha2 + mu)*I;
        alpha1*E + alpha2*I - (theta + mu)*Q;
        (1-p)*M + rho*S + gamma*I + theta*Q - mu*V
    ];
end
function [Y, M] = Heun(f, ya, a, b, n, k)

    tau = (b - a) / n;  % Tamanho do passo
    t = linspace(a, b, n+1);  % Definição de tempo
    Y = ones(k, n+1);  % Inicializa a matriz de resultados
    Y(:, 1) = ya;  % Condições iniciais
    M = ones(k, 1);  % Vetor para armazenar os máximos
    
    for i = 1:n
        % Prever proximo y com o método de euler
        yp = Y(:, i) + tau * f(t(i), Y(:, i)); 
        
        % Correção final
        Y(:, i+1) = Y(:, i) + 0.5 * tau * (f(t(i), Y(:, i)) + f(t(i+1), yp)); 
        
        % Atualização de Máximos
        M = max(M, abs(Y(:, i+1))); 
    end
    
    return
end
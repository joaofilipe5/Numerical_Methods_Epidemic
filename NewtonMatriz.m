function [iteradas, normas, iteracoes] = NewtonMatriz(F, JF, y0, eps, nmax)
    
    % Transpor vetor de aproximação inicial
    x = y0';

    % Definir matrizes de resultados 
    iteradas = ones(length(y0), nmax);
    normas = ones(1, nmax);
    
    % Aplicação do método de Newton 
    for it = 1:nmax

        Fx = F(x);
        JFx = JF(x);
        
        delta = - (JFx \ Fx);
        x_new = x + delta;
        
        iteradas(:, it) = x_new;
        normas(it) = norm(delta);
        
        % Verificar se a diferença entre iteradas é menor que a tolerância
        % para terminar o ciclo
        
        if norm(delta) < eps 
            x = x_new;
            iteradas = iteradas(:, 1:it);
            normas = normas(1:it);
            iteracoes = it;
            break;
        end
        x = x_new;
    end
end
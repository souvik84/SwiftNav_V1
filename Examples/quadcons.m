function y = quadcons(x)
    y = x(1)^4 - 14*x(1)*x(1) + 24*x(1) - x(2)*x(2) + pen(x);
end
function y = pen(x)
    res = constraints(x);
    y = res;
end
function y = constraints(x)
    % Inequality constraints
    c(1) = -x(1) +x(2)-8;  % Example: x(1) <= 2
    c(2) = x(2) -x(1)^2 - 2*x(1) + 2;  % Example: x(2) >= 3
    
    if(c(1)>0 || c(2)>0 )
        disp(c(1));
        disp(c(2));
        
    end
    disp(" ");
    y = (max(0,c(1))^2)*1e18 + (max(0,c(2))^2)*1e18 ;
    % Equality constraints
    ceq(1) = x(1) + x(2) - 5;  % Example: x(1) + x(2) == 5
end

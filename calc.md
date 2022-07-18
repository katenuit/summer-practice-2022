% User input:
%      function pointer: calc_f
%      function pointer: calc_u
%      vector: min_max (example: [1 10])
%      vector: init_vals (example: [1 2 3 4 5])
%      numeric: dt - точность/шаг
%
%      call example:
%      >>[T, x] = calc(@calc_f, @calc_u, [0 10], [0 0 0 0], 0.1)
%
function [T, x]= calc (calc_f, calc_u, min_max, init_vals, dt)
    x = init_vals';
    T = [min_max(1):dt:min_max(2)];
    for i = 1 :  length(T)-1
       t_i = dt * i;
        f_i = feval(calc_f, t_i, x(:,end));
        u = feval(calc_u, t_i, x(:,end));
        for j = 1:length(f_i)
            h =  x(j,i) + dt * f_i(j)+u(j);
            if (h > 1000) 
                h = 999;
            elseif (h < -1000)
                h=-999;
            end
            x(j, i+1) = h;
        end
    end
end

for counter = 1:1000
    
i = 0;
a = 1.7;
b = 0.5;

xlast = 1;
ylast = 0;

%hold on
%for i = 1:1000
%    x = 1-a*abs(xlast)+b*ylast;
 %   y = xlast;
  %  plot(x,y,'k.')
   % xlast = x;
    %ylast = y;
%end

% space grid - horizontal, vertical
hor = linspace(-1.5, 1.5, 100);
vert = linspace(-1.5, 1.5, 100);

% create a random number
init_sq_x = randi(19);
init_sq_y = randi(19);

x1 = vert(init_sq_x);
x2 = vert(init_sq_x+1);

y1 = hor(init_sq_y);
y2 = hor(init_sq_y+1);

hor_sqr = linspace(x1, x2, 100);
vert_sqr = linspace(y1, y2, 100);

ind = 1;
for j = 1:100
    for k = 1:100
        x_res = hor_sqr(j);
        y_res = vert_sqr(k);
        x = 1-a*abs(x_res)+b*y_res;
        y = x_res;
        for l = 1:100
            if x < hor(l)
                break
            end
        end
        for m = 1:100
            if y < vert(m)
                break
            end
        end
        squares(ind,:) = [l m];
        ind = ind+1;
    end
end

squares_unic = unique(squares, "rows");
hold on
plot(counter, length(squares_unic), 'k.')
end
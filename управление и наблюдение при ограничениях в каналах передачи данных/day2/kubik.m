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
hor = linspace(-1.5, 1.5, 20);
vert = linspace(-1.5, 1.5, 20);

%sq_ind = 1;
%for j = 1:19
%    for k = 1:19
%        square(j, k, s_ind) = [hor(i), hor(i+1); vert(i), vert(i+1)]
%        sq_ind = sq_ind + 1
%    end
%end

init_sq_x = randi(19);
init_sq_y = randi(19);

x1 = vert(init_sq_x);
x2 = vert(init_sq_x+1);

y1 = hor(init_sq_y);
y2 = hor(init_sq_y+1);

hor_sqr = linspace(x1, x2, 10);
vert_sqr = linspace(y1, y2, 10);

ind = 1;
for j = 1:10
    for k = 1:10
        x_res = hor_sqr(j);
        y_res = vert_sqr(k);
        x = 1-a*abs(x_res)+b*y_res;
        y = x_res;
        for l = 1:20
            if x<hor(l)
                break
            end
        end
        for m = 1:20
            if y<vert(m)
                break
            end
        end
        squares(ind,:) = [l m];
        ind = ind+1;

    end
end
squares = unique(squares, "rows")
hold on
plot(counter, length(squares), 'k.')
end
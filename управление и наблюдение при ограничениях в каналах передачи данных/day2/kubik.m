for counter = 1:1000
    
i = 0;
a = 1.7;
b = 0.5;

xlast = 1;
ylast = 0;

hr = linspace(-1.5, 1.5, 100);
vr = linspace(-1.5, 1.5, 100);

init_rand_x = randi(49);
init_rand_y = randi(49);

x1 = vr(init_sq_x);
x2 = vr(init_sq_x+1);

y1 = hr(init_rand_y);
y2 = hr(init_rand_y+1);

hr_sqr = linspace(x1, x2, 100);
vr_sqr = linspace(y1, y2, 100);

squares = [];

ind = 1;
for j = 1:100
    for k = 1:100
        x_res = hr_sqr(j);
        y_res = vr_sqr(k);
        x = 1-a*abs(x_res)+b*y_res;
        y = x_res;
        for l = 1:100
            if x < hr(l)
                break
            end
        end
        for m = 1:100
            if y < vr(m)
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
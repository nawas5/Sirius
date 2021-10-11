x = 1;
y = 0;
a = 1.7;
b = 0.5;
for i=1:1000
    plot(x,y,"r*")
    hold on
    [x,y] = lozi(a,b,x,y);
end    

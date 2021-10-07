x = 1
y = 0
for i=1:1000
    plot(x,y,"r*")
    hold on
    [x,y] = lozi(x,y)
end    

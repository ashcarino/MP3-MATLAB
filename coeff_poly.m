function a = coeff_poly(e)
e1 = e(:,1);
e2 = e(:,2);
if length(e) >= 11
    l = 10;
else 
    l = length(e)-1;
end
for n = 1:l
a = polyfit(e1,e2,n);
b = polyval(a,e1);
a = norm(e2 - b);
x = [n,a];
if n == 1
    y = x;
end
if y(2) >= x(2)
    z = x(1);
end
end
a = polyfit(e1,e2,z);
end

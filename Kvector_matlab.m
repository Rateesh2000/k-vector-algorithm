y = [9.6, 15.2, 3.5, 18.0, 7.7, 14.7, 2.5, 10.77];
s = sort(y);
%disp(s);

t = size(s);
L = t(1,2);
%disp(L);

y_min = s(1,1);
y_max = s(1,L);
%disp(y_min);
%disp(y_max);

%disp(f(1,L,y_max,y_min));

e = 0.001;
y_max = y_max + e;
y_min = y_min - e;
%disp(f(1,L,y_max,y_min));

k = [];

for i = 0:L-1
    if(f(i+1,L,y_max,y_min) < s(1,i+1))
        k = [k,i];
    else
        k = [k,i+1];
    end
end
disp(k);

function p = f(x,l,y_x,y_n)
    p = (x-1)*(y_x-y_n)/(l-1)+y_n;
end

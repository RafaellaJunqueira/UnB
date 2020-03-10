clear all;
h = 0.4;
a=0; 
b=1.2;  
t=a:h:b;
n=length(t);
i=0;
y(1)=0.5;
x(1)=1;

for i=2:n
    
    
    fx=x(i-1)*t(i-1)-y(i-1);
    fy=y(i-1)*t(i-1)+x(i-1);
    
    y(i)=y(i-1)+h*fy;
    x(i)=x(i-1)+h*fx;
    
end 
disp ('METODO DE EULER');

x
y
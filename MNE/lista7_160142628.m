% Rafaella Junqueira - 160142628 %

clc;
format long;

% Euler %

t = [0.5:0.5:2]
h = 0.5;20
y(1) = -1;7
for i = 1:1:3
  y(i+1) = y(i)+(y(i) + t(i)^3)*h;
endfor

for i = 1:1:4
  FY(i) = y(i)+t(i)^3;
endfor

y
FY

% Ponto central %

t;
for i = 1:1:4
  ym(i) = y(i) + (y(i)+t(i)^3)*h/2;
endfor

Y(1) = y(1);
for i = 1:1:3
  y(i+1) = y(i)+(h*(ym(i)+(t(i)^3))); 
endfor

Y = y

% Euler %

t2 = [0:0.4:1.2]
h = 0.4;
x(1) = 1;
y2(1) = 0.5;

for i = 1:1:3
  fx(i) = x(i)*t2(i)-y2(i);
  fy(i) = y2(i)*t2(i)+x(i);
  x(i+1) = x(i)+fx(i)*h;
  y2(i+1) = y2(i)+fy(i)*h;
endfor

fx(4) = x(4)*t2(4)-y2(4);
fy(4) = y2(4)*t2(4)+x(4);

x
y2
fx
fy

% Euler Modificado %

c1 = c2 = 0.5;
a2 = b21 = 1;
k1x = fx;
k1y = fy;
X(1) = x(1);
Y(1) = y2(1);
for i = 1:1:3
  k2x(i) = (x(i)+1*k1x(i)h)(t(i)+1*h)-(y2(i)+1*k1x(i));
  k2y(i) = (y2(i)+1*k1y(i)h)(t(i)+1*h)+(x(i)+1*k1y(i));
endfor

for i = 1:1:3
X(i+1) = X(i)+(c1*k1x(i)+c2*k2x(i))*h;
Y(i+1) = Y(i)+(c1*k1y(i)+c2*k2y(i))*h;
endfor

X
Y
% Rafaella Junqueira - 160142628 %

% Questão 1 %

clc
format short;

x = [0 0.4 0.8];
f = [1.2408 2.0333];
funcao = 0;
i = 1;

for i = 1:2
    funcao = funcao + c(i)*(x(i+1)-x(i));
end
funcao


% Questão 2

clc
format short;

a = 0:1:4;

funcao = @(x) 3*x.^3-3*x+1;
f = integral(funcao,0,4);
I = 1/2*[funcao(0)+2*funcao(1)+2*funcao(2)+2*funcao(3)+funcao(4)]
erro = (I-f)/f

% Questão 3

clc
format short;

a = 0:0.1:1.0;
e = exp(a);
I = 0;
impar = 0;
par = 0;

for i = 2 : 9
    if (mod(i,2) == 0)
       par = par + e(i);
    else
        impar = impar + e(i);
    end
end

I = e(1) + (4*par) + (2*impar) + e(10)
h = 1/10;
I = (h/3) * I
fun = @(x) exp(x);
q = integral(fun,0,1)

% Questão 4

clc
format short;

f = @(x) exp(-x);

t = sqrt (1/3);
dx = (10-0)/2;

u = (dx*t + dx);
f1 = exp(-u)*dx;

y = (dx*(-t)+ dx);
f2 = exp(-y)*dx;

I = f1 + f2

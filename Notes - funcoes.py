# Só precisa dizer que é uma funcao, usando def
def soma(x, y):
	return x + y
print(soma(10, 11))

#atribuir um valor caso o usuário nao informe
def soma(x, y = 10):
	return x + y
print(soma(10))

#uma funcao com mil variaveis mas vc so quer mexer em uma variavel especifica. Não precisa nem estar na ordem, só precisa indicar qual é;
print(soma(y = 100, x = 12))

# <center>Identificar overflow na operação
```assembly
.data
        quebra: .asciiz "\n"
        msg1: .asciiz "Com sinal ou sem sinal? "
        msg2: .asciiz "Digite os números:\n"
        msg3: .asciiz "overflow"
.text
main:
# inicializando as variaveis com zero
    move $t0, $zero		                # t0 = soma dos números
    move $t1, $zero		                # t1 = primeiro número
    move $t2, $zero		                # t2 = segundo número
    move $t3, $zero		                # t3 = tipo de número (positivo ou negativo)

# Imprimir "Com sinal ou sem sinal"
    la $a0, msg1
    li $v0, 4
    syscall

# Ler o tipo (0 ou 1) do terminal e salvar em t3
    li $v0, 5 
    syscall
    move $t3, $v0

# Imprime o tipo (0 ou 1)
    # move $a0, $t3
    # li $v0, 1
    # syscall

# Imprimir "Digite os números:"
    la $a0, msg2
    li $v0, 4
    syscall

# Ler os números do terminal e salvar em t1 e t2 
    li $v0, 5
    syscall
    move $t1, $v0

    li $v0, 5
    syscall
    move $t2, $v0

# Imprimir os números digitados
    # move $a0, $t1
    # li $v0, 1
    # syscall

    # la $a0, quebra
    # li $v0, 4
    # syscall

    # move $a0, $t2
    # li $v0, 1
    # syscall

# Somar os dois números e guardar em t0
    addu $t0, $t1, $t2

# Se o tipo for com sinal (1) vai pra "com_sinal". Se não, vai pra "sem_sinal"
    bne $t3, $zero, com_sinal
    j sem_sinal

com_sinal:
# Verificar se os sinais são iguais (retorna 0 pra t3) ou diferentes (retorna 1 pra t3)
    xor $t3, $t1, $t2               

# Descobrir se t3 guardou 0 (sinais iguais) ou 1 (sinais diferentes)
    slt $t3, $t3, $zero             # se t3 = 0, então tem chance de ter overflow pq sinais iguais
    bne $t3, $zero, sem_overflow    # se deu 1, quer dizer que o resultado vai ser menor que zero, então vai pra sem_overflow

# Mas se os sinais forem diferentes, pode ser que dê overflow. Compara o resultado com qqr operando
    xor $t3, $t0, $t1
    slt $t3, $t3, $zero
    bne $t3, $zero, overflow
    j sem_overflow

sem_sinal:
# Faz complemento de 2 da soma (nega e depois soma 1) com um dos números.
    nor $t3, $t1, $zero

# Compara o primeiro passo da negação com o outro número
    sltu $t3, $t3, $t2

# Se a comparação der menor que zero, quer dizer que deu overflow
    bne $t3, $zero, overflow
    j sem_overflow

sem_overflow:
# Imprimir o resultado da soma que está em a0  
    move $a0, $t0
    li $v0, 1
    syscall
    j sair

overflow:
# Imprimir "overflow"
    la $a0, msg3
    li $v0, 4
    syscall
    j sair

# Finalizar o programa
 sair: 
    la $a0, quebra
    li $v0, 4
    syscall

    li $v0, 10
    syscall
```
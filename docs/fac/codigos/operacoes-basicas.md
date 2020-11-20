# <center>Operações básicas

Operações de Adição, Subtração, Multiplicação e Divisão.

```assembly mips
.data
    num1: .asciiz "Insira o primeiro número: "
    num2: .asciiz "Insira o segundo número: "
    quebra_linha: .asciiz "\n"

    soma: .asciiz "Soma: "
    subt: .asciiz "\nSubtração: "
    multi: .asciiz "\nMultiplicação: "
    divi: .asciiz "\nDivisão : "

.text
main:
# Imprime a mensagem de num1
    la $a0, num1
    li $v0, 4
    syscall

# Leia o numero em v0 e deixe salvo em t0
    li $v0, 5
    syscall    
    move $t0, $v0

# Imprima a mensagem de num2
    la $a0, num2
    li $v0, 4
    syscall

# Leia o numero em v0 e deixe salvo em t1
    li $v0, 5
    syscall
    move $t1, $v0

# Joguei uma quebra de linha só pra ficar fácil de visualizar
    la $a0, quebra_linha
    li $v0, 4
    syscall

# Imprima a mensagem primeiro. Depois SOME os dois numeros em t2 e imprima o resultado
    la $a0, soma
    li $v0, 4
    syscall

    add $t2, $t1, $t0       # t2 = t1 + t2
    move $a0, $t2
    li $v0, 1
    syscall

# Imprima a mensagem, SUBTRAIA os dois numeros em t2 e imprima o resultado
    la $a0, subt
    li $v0, 4
    syscall

    sub	$t2, $t0, $t1	    # t2 = $t0 - $t1
    move $a0, $t2
    li $v0, 1
    syscall

# Imprima a mensagem, MULTIPLIQUE os dois numeros em t2 e imprima o resultado
    la $a0, multi
    li $v0, 4
    syscall

    mult $t0, $t1			# t0 * t1 = Hi and Lo registers
    mflo $t2				# copia Lo para t2
   
    move $a0, $t2
    li $v0, 1
    syscall

# Imprima a mensagem, DIVIDA os dois numeros em t2 e imprima o resultado
    la $a0, divi
    li $v0, 4
    syscall

    div $t0, $t1                # t0 / t1
    mflo $t2					# t2 = parte mais significativa da divisão 
    mfhi $t3					# t3 = parte menos significativa da divisão
    
    move $a0, $t2
    li $v0, 1
    syscall

    la $a0, quebra_linha
    li $v0, 4
    syscall

# Parte de finalização do programa. É tipo o return 0;
    li $v0, 10
    syscall



```
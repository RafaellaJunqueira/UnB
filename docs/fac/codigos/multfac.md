# <center>Implementaçao do operador Mult
Esse exercício é para fazer uma multiplicação igual a que o operador "mult" faz por baixo dos panos. É meio confuso de entender, vai bit pra lá, sobra bit pra cá. Mas esse é o jeito completo. Porééém, entretando, todavia, existe um operador muito muito fácil que faz exatamente a mesma coisa chamado "madd". Vale a pena dar uma olhada, o código fica, literalmente, com 3 linhas! Segue a dica da mamãe, hein!

```assembly
# Implementar o operador mult.

.text
main:
    move    $a0, $zero
    addi    $a0, 9              # a0 = multiplicando 

    move    $a1, $zero
    addi    $a1, 3              # a1 = multiplicador

    move    $t0, $zero          # parte MAIS significativa do produto (simula o Hi)
    move    $t1, $zero          # parte MENOS significativa do produto (simula o Lo)

    addi    $t3, 1              # t3 = contador começando em 1

# Passo 1: salvar o multiplicador (a1) no lo do produto (t1). Deixar o Hi (t0) zerado.
    move    $t1, $a1               

# Passo 2: olhar o bit menos significativo de t1 (parte menos dignificativa do produto). Se for 1: acumula no mais significativo; se for 0: segue o baile.
loop:
    beq     $t3, 32, sair
    and     $t2, $t1, 1         # ver se o último bit do lo é 1
    beq		$t2, 1, acumula  	# se t2 = 1 vai pro acumula
    sll     $t1, $t1, 31        # se não for 1, anda 31 pra esqueda no lo e 1 à direta no hi
    slr     $t0, $t0, 1
    addi    $t3, $t3, 1         
    j       loop  

acumula:
    
    add     $t0, $t0, $a0
    add     $t0, $t0, $t1
    addi	$t3, $t3, 1			# t3 = t3 + 1
    j       loop

sair:
    move $a0, $t0
    li $v0, 1
    syscall

    li $v0, 10
    syscall
```
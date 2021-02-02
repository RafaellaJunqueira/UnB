# <center>Média Ponderada para Int
```assembly
# Ler números INTEIROS e fazer a media ponderada.

.data
        msg1: .asciiz "Comece... "
.text
main:
# inicializando as variaveis com zero
        move $t0, $zero		            # t0 = qtd = 0
        move $t1, $zero		            # t1 = peso = 0 
        move $t2, $zero	                # t2 = num = 0
        move $t3, $zero                 # t3 = soma_dos_pesos = 0
        move $t4, $zero                 # t4 = peso * numero = 0

# Imprimir "Comece..."
        la $a0, msg1
        li $v0, 4
        syscall

# Ler qtd do terminal e salvar em t0
        li $v0, 5 
        syscall
        move $t0, $v0                   # t0 = qtd

verifica_qtd:
        bne $t0, $zero, loop            # se qtd > 0, vai pro loop. Se não, vai pra sair.
        j sair

loop: 
        li $v0, 5 
        syscall
        move $a0, $v0                   # a0 = peso
        add $t3, $t3, $a0		        # t3 = t3 + a0 (soma dos pesos)

        li $v0, 5 
        syscall
        move $a1, $v0                   # a1 = numero
        mult $a1, $a0			        # $t0 * $t1 = resultado
        mflo $a1				    	# a1 = resultado (numero * peso)
        
        add $t4, $t4, $a1               # t4 = t4 + a1 (soma dos [peso * numero] )

        # li $v0, 1
        # syscall
        # move $a0, $a1 
        # li $v0, 1
        # syscall

        addi $t0, $t0, -1			    # qtd -= 1
        j verifica_qtd

sair:
        div		$t4, $t3			# t4 / t3
        mflo	$t2					# $t2 = floor ($t0 / $t1) 
        mfhi	$t3					# $t3 = $t0 mod $t1 
        
        move $a0, $t2 
        li $v0, 1
        syscall

        li $v0, 10
        syscall
```
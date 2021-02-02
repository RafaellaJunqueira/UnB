# <center>Média Ponderada para Float
```assembly

.data
        msg1: .asciiz "Comece..."
.text
main:
# Imprimir "Comece..."
        la $a0, msg1
        li $v0, 4
        syscall

# Ler a quantidade do terminal
        li $v0, 5 
        syscall
        move $t0, $v0                   # t0 = qtd

# Verifica o iterador e faz os laços
verifica_qtd:
        bne $t0, $zero, loop            # se qtd > 0, vai pro loop. Se não, vai pra sair.
        j sair

# Ler um float do terminal
loop:
        li $v0, 7 
        syscall
        mov.d $f2, $f0                  # f2 = peso 
        add.d $f4, $f4, $f2		# f4 = f4 + f2 (soma dos pesos)

        li $v0, 7
        syscall
        mov.d $f6, $f0                  # f6 = numero
        mul.d $f8, $f2, $f6             # f8 = peso * numero
        add.d $f10, $f10, $f8           # f10 = soma dos numeros ponderados

        addi $t0, $t0, -1		# qtd -= 1
        j verifica_qtd
      
sair:
        div.d $f14, $f10, $f4
        mov.d $f12, $f14
        li $v0, 3
        syscall

        li $v0, 10
        syscall
```
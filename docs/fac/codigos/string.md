# <center>Impressão de string inteira

Ler do terminal e imprimir essa string.
**OBS**: sempre contar com dois bytes A MAIS porque na hora de ler a string, o programa conta com o \0 de final e com o \n do enter.

```assembly
.data
    str: .space 20         # aloquei um espaço de memória de 20 bytes
    str1: .asciiz "Digite uma string:\n"
    str2: .asciiz "String dgitada:\n"
    quebra: .asciiz "\n"

.text
main:
    la $a0, str1            # a0 = Digite uma string
    li $v0, 4               # imprime a mensagem de str1
    syscall

    la $a0, str             # a0 = espaço de 20 bytes. Endereço base do que receberá
    li $a1, 20              # carrega o tamanho máximo dessa stiring
    li $v0, 8               # lê a string e salva em str
    syscall

    # la $a0, str2            
    # li $v0, 4               # imprime a mensagem de str2
    # syscall

    # la $a0, str             
    # li $v0, 4               # imprime a stirng inteira
    # syscall

    move $a2, $a0               # a2 = string digitada
    move $t0, $zero             # t0 = i = 0

loop:
    add $t1, $t0, $a2           # t1 guarda o endereço de inicio da string + deslocamento do i ($t0)
    lbu $t2, ($t1)              # t2 = string[i]
    
    move $a0, $t2               # a0 = t2
    li $v0, 11                  # imprime o char
    syscall
    
    la $a0, quebra              # imprime uma quebra de linha 
    li $v0, 4
    syscall

    addi $t0, $t0, 1               # i = i + 1  
    bne $t2, $zero, loop           # se t2 != \0, retoma o loop
    j sair
    
sair:
    li $v0, 10
    syscall
```
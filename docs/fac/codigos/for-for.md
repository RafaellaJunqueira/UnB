# <center> Fazendo laço duplo

Considere que os valores de a, b, i, j sejam inteiros e estejam nos registradores $s0, $s1, $t0, $t1, respectivamente. Além disso, suponha que D seja um vetor de números inteiros e que seu endereço base esteja no registrador $s2. Traduza os segmentos de código a seguir da linguagem C para o assembly MIPS.
```c
 for ( i = 0; i < a; i++ ) {
    for ( j = 0; j < b; j++ ) {
       D[4*j] = i + j;
    }
 }
```

```assembly mips
.data

.text
main:
        addi $s0, $zero, 2
        addi $s1, $zero, 2

        move $t0, $zero         # i = 0
laco1:  addi $t0, $t0, 1
        slt $t2, $t0, $s0       # i < a ?
        beq $t2, $zero, exit    # interrompe o laco e sai do programa

        move $t1, $zero         # j = 0
laco2:  slt $t2, $t1, $s1       # j < b 
        beq $t2, $zero, laco1   # se j >= 0, interrompe o laco e volta pro laco de fora
        add $t2, $t0, $t1       # $t2 = i + j

        sll $t3, $t1, 4         # calcula o deslocamento no vetor (t3 = 16 * j)         # 
        add $t3, $s2, $t3       # t3 = t3 + s2 (calcula o endereço da posição 4*j)
        lw $t2, 0($t3)          # D[4*j] = i + j
        addi $t1, $t1, 1        # j += 1
        j laco1

# print:  move $a0, $t3
#         li $v0, 1
#         syscall
#         j laco2

exit:   li $v0, 10
        syscall
```
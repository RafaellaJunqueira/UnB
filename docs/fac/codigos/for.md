# <center> Fazendo laço simples

Considere que os valores de a, b e i sejam inteiros e estejam nos registradores
$s0, $s1 e $t0, respectivamente. Traduza o segmento de código a seguir da 
linguagem C para o assembly MIPS.

```c
for ( i = 0; i < b; i++ ) {
   a += b;
}
```

```assembly mips
.data

.text
main:
# inicializei todo mundo com zero
    move $s0, $zero           # a = 0;  Pode ser como add $0, $zero, $zero.
    addi $s1, 1               # b = 2
    move $t0, $zero           # i = 0

for:
    bgt	$t0, $s1, Sair        # if i > b, vai para Sair
    j iteracao                # se ainda for menor, faz a iteração

iteracao:
    add $s0, $s0, $s1         # a = a + b
    addi $t0, $t0, 1          # i = i + 1
    j for                     # faz a verificação de novo no for
    
Sair:   
    move $a0, $s0
    li $v0, 1
    syscall

    li $v0, 10
    syscall
```
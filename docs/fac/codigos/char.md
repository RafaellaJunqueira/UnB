# <center>Impressao de string  
Percorrer uma string e copiar cada char. Em C seria o código:
```C

void strcpy( char x[], char y[] )
{
    int i;
    for (i = 0; (x[i] != y[i]) != '/0'; i++)
}
# As variáveis são equivalentes a: x = $a0 , y = $a1 , i = $t0
```

Agora, em assembly seria:
```assembly
 .data

 .text
 main:

strcpy:
    add     $t0, $zero, $zero       # inicializa i = 0

L1: 
    add     $t1, $t0, $a1           # t1 contém o endereço de y[i]
    lbu     $t2, 0($t1)             # t2 = y[i]

    add     $t3, $t0, $a0           # t3 contém o endereço x[i]
    sb      $t2, 0($t3)             # x[i] = y[i]

    beq     $t2, $zero, L2          # se y[i] = 0, vai para L2

    addi    $t0, $t0, 1             # i += 1
    j L1

L2:
    jr $ra

    li $v0, 10
    syscall
```
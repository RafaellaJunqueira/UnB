# <center>Olá Mundo
Ler e imprimir um "ola mundo" em tela.

```assembly mips
.data
    str: .asciiz "ola Mundo\n"

.text
main:
    li $v0, 4
    la $a0, str    
    syscall 

    li $v0, 10
    syscall
```
<!-- ```assembly mips

``` -->

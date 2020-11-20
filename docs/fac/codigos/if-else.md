# <center>Laço com "if" e "else"

2.Traduza o código em linguagem C a seguir para assembly MIPS:
Considere que as variáveis a = $s0, b = $s1 e resultado = $s2.

```c
if (a == b) resultado = a + b;
else
{
   if ( a < b ) {
      resultado = b - a;
   }
   else {
      resultado = a - b;
   }
}

```

```assembly mips
.data
        msg1: .asciiz "iguais\n"
        msg2: .asciiz "B maior\n"
        msg3: .asciiz "A maior\n"

.text
main:

        addi $s0, $s0, 5            # coloquei um valor direto em s0
        addi $s1, $s1, 5            # coloquei um valor direto em s1

        beq $s0, $s1, padrao	    # if s0 == s1 (a == b), vai para padrao
        slt $t1, $s0, $s1           # t1 = 1 se a < b
        bne $t1, $zero, else_1      # se t1 != 0 (a < b) vai para else_1
        
        sub $s2, $s0, $s1           # se não entrar no padrao, nem no else_1, faz a subtração
        la $a0, msg3                # imprime que A > B
        li $v0, 4
        syscall
        j Sair

padrao: add $s2, $s0, $s1	    # s2 = s0 + s1 (resultado = a + b)
        la $a0, msg1                # imprime que são iguais
        li $v0, 4
        syscall
        j Sair

else_1: sub $s2, $s1, $s0           # resultado = b - a
        la $a0, msg2                # imprime que B > A
        li $v0, 4
        syscall
        j Sair

Sair:   move $a0, $s2               # copia o resultado pro registrador que faz imprimir
        li $v0, 1                   # manda imprimir um inteiro
        syscall
        
        li $v0, 10                  # finaliza o programa
        syscall
```
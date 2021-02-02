# <center>Maior número
Identificar o maior número e imprimir em tela. Primeiro mostrado em código C pra facilitar a vida
```C
#include <stdio.h>

int main(int argc, char const *argv[])
{
    int num;
    int qtd = 0;
    int temp = 0;

    printf("Digite qtd\n");
    scanf("%d", &qtd);

    printf("Digite os números\n");
    scanf("%d", &num);
    qtd = qtd - 1;

    while(qtd > 0)
    {
        scanf("%d", &temp);
        if(temp > num)
        {
            num = temp;
        };
        qtd -= 1;
    }
        printf("num = %d\n", num);

    return 0;
}
```

Agora o vida loka do assembly
```assembly
.data
    msg1: .asciiz "Insira a quantidade: "
    msg2: .asciiz "Digite os numeros:\n"

.text
main:
# inicializando as variaveis com zero
    move $t0, $zero		            # t0 = qtd = 0
    move $t1, $zero		            # t1 = temp = 0 
    move $t2, $zero	                # t2 = 0
    li	$t3, 1	                   # t3 = 1. Vai usar pra subtrair do contador
    
# Imprimir "Digite a quantidade:"
    la $a0, msg1
    li $v0, 4
    syscall

# Ler qtd do terminal e salvar em t0
    li $v0, 5 
    syscall
    move $t0, $v0

# a0 = t0 e imprime o valor 
    # move $a0, $t0
    # li $v0, 1
    # syscall

# Imprimir "Digite os números:" 
    la $a0, msg2
    li $v0, 4
    syscall

# Guarda o primeiro numero em num
    li $v0, 5 
    syscall
    move $a1, $v0                   # a1 = num = v0 lido do terminal
    sub	$t0, $t0, $t3	        	# $t0 = $t0 - $t3
        

# if (qtd > 0)
verifica_qtd:
    bne		$t0, $zero, compara	    # if qtd != 0, vai pra "compara"
    j sair

# while
compara: 
# Ler qtd do terminal e salvar em t1 = temp
    li $v0, 5 
    syscall
    move $t1, $v0                   # temp = v0

    slt $t2, $a1, $t1               # t2 = 1 se num < temp
    bne $t2, $zero, troca           # se t2 != 0, vai pro troca
    sub	$t0, $t0, $t3
    j verifica_qtd

troca:
    move $a1, $t1
    move $t2, $zero
    sub	$t0, $t0, $t3		        # qtd = qtd - 1
    j verifica_qtd

# Finalizar programa
sair:
# imrpime o valor final de a1
    move $a0, $a1
    li $v0, 1
    syscall

    li $v0, 10
    syscall
```


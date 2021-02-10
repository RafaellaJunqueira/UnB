# <center> Comparar char's
Esse exercício é muuuito legal também! Me senti uma deusa quando deu certo kkk A ideia é que existe uma prova e a entrada será a quantidade de letras que o gabarito possui e em seguida a sequência correta dessas letras (sempre maiúsculas). Em seguida, entrará a sequência marcada pelo aluno. O programa deve ter a saída de quantas e quais letras o aluno acertou.

Existe um jeito mais inteligente de fazer isso, alocando o espaço dinamicamente e que eu não sabia fazer na época. O "vestibular 2" trará essa solução.

Resolução em C:
```C
#include <stdio.h>

int main(void)
{
    int qtd_letras = 0;
    int soma = 0;
    scanf("%d", &qtd_letras);

    char palavra1[qtd_letras];
    char palavra2[qtd_letras];

    scanf("%s", &palavra1);
    scanf("%s", &palavra2);

    for(int i = 0; i < qtd_letras; i++)
    {
        if(palavra1[i] == palavra2[i])
        {
            soma += 1;
        }
    }

    printf("%d", soma);
    printf("\n");

    return 0;
}
```

Agora no assembly vida loka:

```assembly
.data
    quebra: .asciiz "\n"
    palavra1: .space 20                     # aloca um espaço de memória de 20 bytes para a palavra 1
    palavra2: .space 20                     # aloca um espaço de memória de 20 bytes para a palavra 2
    qtde: .asciiz "Digite a quatidade:\n"
    frase: .asciiz "Digite uma string:\n"

.text
main:
# inicializando as variaveis com zero
    move $t0, $zero		                    # t0 = qtd_letras = 0
    move $t1, $zero		                    # t1 = soma = 0
    move $t6, $zero		                    # t6 = i = 0

# Imprimir "Digite a quantidade"
    la $a0, qtde            
    li $v0, 4               
    syscall

# Ler o valor e salvar em t0
    li $v0, 5
    syscall
    move $t0, $v0

# Imprimir "Digite uma string"
    la $a0, frase            
    li $v0, 4               
    syscall

# Ler a string e salvar em palavra1
    la $a0, palavra1                       # a0 = espaço de 20 bytes. Endereço base do que receberá
    li $a1, 20                             # carrega o tamanho máximo dessa stiring
    li $v0, 8               
    syscall
    move $a2, $a0                          # salva a palavra1 em a2

# Imprimir a palavra 1
#     move $a0, $a2            
#     li $v0, 4               
#     syscall

# Ler outra string e salvar em palavra2
    la $a0, palavra2                       # a0 = espaço de 20 bytes. Endereço base do que receberá
    li $a1, 20                             # carrega o tamanho máximo dessa stiring
    li $v0, 8               
    syscall
    move $a3, $a0                          # salva a palavra2 em a3

# Imprimir a palavra 2
#     move $a0, $a3            
#     li $v0, 4               
#     syscall


verifica_qtd:
    beq	$t6, $t0, sair	                    # if i == qtd_letras, entao acaba
    j compara

compara:
    add $t2, $a2, $t6                       # t2 = palavra1 + deslocamento (qtd_letras) 
    lbu $t3, ($t2)                          # t3 = palavra1[qtd_letras]
 
    # move $a0, $t3
    # li $v0, 11
    # syscall
    # la $a0, quebra
    # li $v0, 4
    # syscall
 
    add $t4, $a3, $t6                       # t4 = palavra2 + deslocamento (qtd_letras)
    lbu $t5, ($t4)                          # t5 = palavra2[qtd_letras]

    # move $a0, $t5
    # li $v0, 11
    # syscall
    # la $a0, quebra
    # li $v0, 4
    # syscall

    beq $t3, $t5, soma
    
    addi $t6, $t6, 1 			            # (qtd_letras) t0 = t0 - 1
    j verifica_qtd

soma:
    addi $t1, $t1, 1			            # (soma) t1 = t1 + 1
    move $a0, $t5
    li $v0, 11
    syscall
    addi $t6, $t6, 1			            # (i) t6 = t6 + 1
    j verifica_qtd

sair:
    move $a0, $t1
    li $v0, 1
    syscall

    la $a0, quebra
    li $v0, 4
    syscall

    li $v0, 10
    syscall
```
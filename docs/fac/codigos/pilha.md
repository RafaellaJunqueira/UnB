# <center> Armazenar em Pilha
Escreva um código em assembly MIPS para armazenar o conteúdo dos registradores $s0, $s1 e $s2 na pilha
```assembly
.data

.text
main:

addi $sp, $sp, -12          # cria espaço para 3 itens na pilha. É negativo porque vai pra baixo, vc quer salvar no topo.
sw $s0, 8($sp)              # empilha s0 (começa pela posição mais funda da pilha).
sw $s1, 4($sp)              # empilha s1 
sw $s2, 0($sp)              # empilha s2 (está no topo da pilha)

# Agora pra desempilhar

lw $s0, 0($sp)
lw $s1, 4($sp)
lw $s2, 8($sp)
addi $sp, $sp, 12           # remove os 3 itens da pilha. Remover é só mudar o ponteiro da pilha pra não mostar nada.
```
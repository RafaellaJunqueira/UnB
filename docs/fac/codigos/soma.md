# <center> Soma de dois inteiros

```assembly

.data
    num1: .asciiz "Informe o primeiro número: "
    num2: .asciiz "Informe o segundo número: "
    quebra_de_linha: .asciiz "\n"
.text
main:
# Primeira parte: imprime na tela a mensagem, lê um número e guarda em t0

    la $a0, num1            # Carrega (load address) o que está na variável num1 para o registrador a0
    li $v0, 4               # Manda imprimir uma string (tudo que é pra imprimir ele entende é vai estar em a0)
    syscall                 # Indica que é pra executar esse pedaço; vai imprimir a mensagem

    li $v0, 5               # Manda LER do terminal um inteiro
    syscall                 # Executa

    move $t0, $v0           # Coloca em t0 o que leu do terminal e guardou em v0 (t0 = v0)


# Segunda parte: imprime na tela a mensagem de num2, lê um número e salva em t1
    
    la $a0, num2            # Carrega a mensagem de num2 em a0
    li $v0, 4               # "O que tem em a0 é uma string, imprima"
    syscall

    li $v0, 5               # "Leia do terminal outro inteiro"
    syscall

    move $t1, $v0           # Salve esse inteiro que estava em v0 no registrador t0


# Terceira parte: soma os dois (t0 e t1) e salva em t2

    add $t2, $t0, $t1       # t2 = t0 + t1 
    move $a0, $t2           # salva t2 em a0, pra poder imprimir depois
    
    li $v0, 1               # "O que tem am a0 é um inteiro, imprima"
    syscall

    la $a0, quebra_de_linha         # Essa parte é só pra ter uma quabra de linha no final, se quiser
    li $v0, 4
    syscall

# Esse bloco de código SEMPRE deve existir, é o que manda o programa finalizar
    li $v0, 10
    syscall
```
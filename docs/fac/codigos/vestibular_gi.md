# <center>Comparar char's 2.0
Agora um jeito mais inteligente e que meis eficiente também, porque usa alocação dinâmica então não fica lá gastando memória atoa.

```assembly
.data
	quebra:	.asciiz "\n"

.text
main:
# Inicializando a variável zerada
	move $a0, $zero

# Ler a quantidade de letras e salvar em a0
	li $v0, 5
	syscall
	move $a0, $v0         			
    add $t0, $a0, $zero				# t0 = quantidade de letras

# Alocar um espaço de memória pra string em t1
	li $v0, 9            
	syscall              			
	move $a1, $v0         
	move $t1, $a1

loop_palavra1:
# Ler um char
	li $v0, 12
	syscall

# Pegar um char da palavra
	sb $v0, 0($t1)
	addi $t1, $t1, 1    
	addi $t0, $t0, -1    
	bne $t0, $zero, loop_palavra1         # se qtd de letras != 0, vai pro primeiro loop

# Ler um char    
	li $v0, 12       
	syscall   
      		
	add $t0, $a0, $zero
	move $a0, $zero
	
loop_palavra2:	
	lb $t1, 0($a1)
	li $v0, 12            
	syscall        

	bne $v0, $t1, pula
	addi $a0, $a0, 1

pula:
	addi $a1, $a1, 1     
	addi $t0, $t0, -1  
	bne $t0, $zero, loop_palavra2 
      	
# Ler um char
	li $v0, 12            
	syscall

# Imprimir a soma final
	li $v0, 1
	syscall
	
	la $a0, quebra
	li $v0, 4
	syscall

	li $v0, 10
	syscall
```
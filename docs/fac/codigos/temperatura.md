# <center>Conversão entre escalas
Converter as temperaturas entre Celsius <-> Fahrenheit <-> Kelvin. Esse exercício foi muito legal!!

```assembly
.data
        msg1: .asciiz "Qual letra?"
        kelvin: .double 273.15
        f1: .double 32.00
        f2: .double 1.80
        C: .asciiz "C"
        K: .asciiz "K"
        F: .asciiz "F"
.text
main:
# Imprimir "Qual letra?"
        # la $a0, msg1
        # li $v0, 4
        # syscall

# Ler a letra
        li $v0, 12
        syscall
        move $a1, $v0                  # a1 = letra da temperatura de origem      

# Syscall inutil pra pegar o \0
        li $v0, 12
        syscall

# Ler a letra
        li $v0, 12
        syscall
        move $a2, $v0                  # a2 = letra da temperatura de destino

# Syscall inutil pra pegar o \0
        li $v0, 12
        syscall

# Ler a temperatura
        li $v0, 7
        syscall
        mov.d $f4, $f0                  # f4 = número

        # mov.d $f12, $f2
        # li $v0, 3
        # syscall

# conferir letras
        la $t4, C
        lbu $t0, 0($t4)
        
        la $t4, K
        lbu $t1, 0($t4)

        la $t4, F
        lbu $t2, 0($t4)

        beq $a1, $t0, troca0            # a1 = celsius
        beq $a1, $t1, troca1            # a1 = kelvin
        beq $a1, $t2, troca2            # a1 = fahrenheit

troca0:
        beq $a2, $t1, cparak            # a2 = kelvin
        beq $a2, $t2, cparaf            # a2 = fahrenheit

troca1:
        beq $a2, $t0, kparac            # a2 = celsius
        beq $a2, $t2, kparaf            # a2 = fahrenheit

troca2:
        beq $a2, $t0, fparac            # a2 = celsius
        beq $a2, $t1, fparak            # a2 = kelvin

# Celsius -> Fahrenheit
cparaf:
        l.d $f6, f1                     # f6 = 32 
        l.d $f8, f2                     # f8 = 1.8
        mul.d $f4, $f4, $f8
        add.d $f2, $f4, $f6
        j sair

# Celsius -> Kelvin
cparak:
        l.d $f6, kelvin            # f6 = 273.15
        add.d $f2, $f4, $f6		   # f2 = numero - 273
        j sair

# Fahrenheit -> Celsius
fparac:
        l.d $f6, f1                # f6 = 32 
        l.d $f8, f2                # f8 = 1.8
        sub.d $f4, $f4, $f6        # numero = numero - 32
        div.d $f2, $f4, $f8        # f2 = numero / 1.8 
        j sair

# Fahrenheit -> Kelvin
fparak:
        l.d $f6, kelvin             # f6 = 273.15
        l.d $f8, f2                 # f8 = 1.8
        l.d $f10, f1                # f10 = 32
        
        sub.d $f4, $f4, $f10
        div.d $f4, $f4, $f8
        add.d $f2, $f4, $f6
        j sair

# Kelvin -> Celsius
kparac:
        l.d $f6, kelvin
        sub.d $f2, $f4, $f6         # f4 = f2 - f6
        j sair

# Kelvin -> Fahrenheit
kparaf:
        l.d $f6, kelvin             # f6 = 273.15
        l.d $f8, f2                 # f8 = 1.8
        l.d $f10, f1                # f10 = 32

        sub.d $f4, $f4, $f6         # numero = numero - 273
        mul.d $f4, $f4, $f8         # numero = numero * 1.8
        add.d $f2, $f4, $f10        # f2 = numero + 32
        j sair


sair:
        mov.d $f12, $f2
        li $v0, 3
        syscall

        li $v0, 10
        syscall
```
# <center>Multiplicação simples
```assembly
multfac:
    mult	$a0, $a1			# $t0 * $t1 = Hi and Lo registers
    mflo	$t2					# resultado Lo salva em t2
    mfhi    $t3
    j sair					    # vai pra sair

sair: 
    li      $v0, 10
    syscall
```
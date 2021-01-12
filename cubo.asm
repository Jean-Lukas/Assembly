.data # Diretiva onde se declara variáveis e constantes.
num:	.asciiz "Digite um número:\n"
cubo:	.asciiz "O cubo é\n"

.text			# Diretiva onde vai conter todo o código.
li $v0, 4		# Preparando o processador pra receber uma string.
la $a0, num 		# Ler endereço de memória da variável.
syscall
li $v0, 5		# Leitura de um número inteiro.
syscall	
move $t1, $v0 		# $t1 = $v0
mul $t2,$t1,$t1		# $t2 = $t1 * $t1
mul $t3,$t1,$t2 	# $t3 = $t1 * $t2
li $v0, 4		# Preparando o processador pra receber uma string.
la $a0, cubo		# Ler endereço de memória da variável cubo e jogar dentro do registrador $a0.
syscall			# Executar as instrucoes.
li $v0, 1		# li (load immediate) ler imediatamente o registrador $v0 que vai receber um número inteiro.
la $a0, ($t3)		# la (load address) $a0 = ($t3).
syscall			# Executar instrucoes.

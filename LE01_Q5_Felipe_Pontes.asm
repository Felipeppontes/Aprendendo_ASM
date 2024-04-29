		;---------------------Questão	5---------------------
		;[FELIPE	PONTES] ---- 28/04/2024
		;Q5)		Reutilizando código: faça um código que calcula o fatorial de um número, para isso, rea-proveite o código feito
		;para	calcular a multiplicação entre dois número. Salve o resultado na memória de dados.
		;=============================================================================================
		
		
		;=====================================================================
		mov		r1, #5       ; escolha o número para calcular o fatorial   |
		;=====================================================================
		
		mov		r0, #0x100   ; endereço inicial da memória de dados
		mov		r4, #1       ; inicializa o resultado com 1 (fatorial)
		
		;		Incrementa 1 ao número do fatorial  -> pra corrigir minha falta de criatividade
		add		r1, r1, #1
		;		Decrementa o número (r1) em 1
fatorial	subs		r1, r1, #1
		beq		fim           ; se o número = 1, encerra aqui o cálculo pois será 1
		
		;		Multiplica r4 * r1
		mov		r2, r4         ; move o valor acumulado do fatorial para r2
		mov		r3, r1         ; move o número a ser decrementado para r3
		mov		r5, #0         ; zera o registrador de resultado temporário
		
loop_mul	add		r5, r5, r2     ; adiciona o valor acumulado do fatorial no resultado temporário
		subs		r3, r3, #1     ; decrementa o número a ser decrementado
		
		;bne		"branch if not equali" ("desviar se não for igual"
		bne		loop_mul       ; se o número não for zero, continua o loop
		
		mov		r4, r5         ; atualiza o resultado acumulado do fatorial
		b		fatorial
		
fim		str		r4, [r0, #0]   ; salva o resultado (fatorial) na memória de dados

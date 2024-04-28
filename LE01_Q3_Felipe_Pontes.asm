		;--------------------QUESTÃO	3--------------------
		;[FELIPE	PONTES]
		;Q3)		Para o código implementado na Questão 2, até que termo da sequência é possível calcular sem que haja overflow do resultado?
		;=====================================================================================================================================
		
		
		
		
		;---->O	overflow ocorre quando o resultado de uma operação ultrapassa o limite máximo que um tipo de dado pode armazenar. No caso de números inteiros de 32 bits,
		;como	usados no ARM, o limite máximo é de 2^31 - 1 (ou 2.147.483.647) para valores positivos e -2^31 (ou -2.147.483.648) para valores negativos.
		
		
		
		;Na		sequência de Fibonacci, os números crescem rapidamente.
		;No		código que fiz, o overflow ocooreu após calcularmos o 46º termo. Então, posso calcular com segurança até o 46º termo
		;Para	verificar eu tirei o limite de 30 termos e fui testando varios limites até que ultrapassou o limite positivo máximo que era o 46 termo,
		;que		gerou o valo 1836311903 após isso surgiu numero negativo
		
		mov		r0, #256         ; Inicializa o endereço de memória para armazenar os termos
		mov		r1, #1         ; Inicializa o primeiro termo da sequência (F(0))
		mov		r2, #1         ; Inicializa o segundo termo da sequência (F(1))
		str		r1, [r0], #4  ; Armazena o primeiro termo na memória e incrementa o endereço
		str		r2, [r0], #4   ; Armazena o segundo termo na memória e incrementa o endereço
		mov		r3, #2         ; Inicializa o contador de termos
		
loop1
		cmp		r3, #46     ; Compara o contador com 46
		beq		loop2          ; Se atingir 30 termos, vai para loop2
		add		r4, r1, r2     ; Calcula o próximo termo (F(n) = F(n-1) + F(n-2))
		str		r4, [r0], #4  ; Armazena o próximo termo na memória e incrementa o endereço
		mov		r1, r2         ; Atualiza F(n-2) para o valor de F(n-1)    ;Demorei para pegar essa lógica
		mov		r2, r4         ; Atualiza F(n-1) para o valor calculado
		add		r3, r3, #1     ; Incrementa o contador de termos
		b		loop1          ; Volta para loop1
		
loop2
		mov		r0, #0         ; Fim
		
		

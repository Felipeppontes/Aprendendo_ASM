		;--------------------QUEST�O	3--------------------
		;[FELIPE	PONTES]
		;Q3)		Para o c�digo implementado na Quest�o 2, at� que termo da sequ�ncia � poss�vel calcular sem que haja overflow do resultado?
		;=====================================================================================================================================
		
		
		
		
		;---->O	overflow ocorre quando o resultado de uma opera��o ultrapassa o limite m�ximo que um tipo de dado pode armazenar. No caso de n�meros inteiros de 32 bits,
		;como	usados no ARM, o limite m�ximo � de 2^31 - 1 (ou 2.147.483.647) para valores positivos e -2^31 (ou -2.147.483.648) para valores negativos.
		
		
		
		;Na		sequ�ncia de Fibonacci, os n�meros crescem rapidamente.
		;No		c�digo que fiz, o overflow ocooreu ap�s calcularmos o 46� termo. Ent�o, posso calcular com seguran�a at� o 46� termo
		;Para	verificar eu tirei o limite de 30 termos e fui testando varios limites at� que ultrapassou o limite positivo m�ximo que era o 46 termo,
		;que		gerou o valo 1836311903 ap�s isso surgiu numero negativo
		
		mov		r0, #256         ; Inicializa o endere�o de mem�ria para armazenar os termos
		mov		r1, #1         ; Inicializa o primeiro termo da sequ�ncia (F(0))
		mov		r2, #1         ; Inicializa o segundo termo da sequ�ncia (F(1))
		str		r1, [r0], #4  ; Armazena o primeiro termo na mem�ria e incrementa o endere�o
		str		r2, [r0], #4   ; Armazena o segundo termo na mem�ria e incrementa o endere�o
		mov		r3, #2         ; Inicializa o contador de termos
		
loop1
		cmp		r3, #46     ; Compara o contador com 46
		beq		loop2          ; Se atingir 30 termos, vai para loop2
		add		r4, r1, r2     ; Calcula o pr�ximo termo (F(n) = F(n-1) + F(n-2))
		str		r4, [r0], #4  ; Armazena o pr�ximo termo na mem�ria e incrementa o endere�o
		mov		r1, r2         ; Atualiza F(n-2) para o valor de F(n-1)    ;Demorei para pegar essa l�gica
		mov		r2, r4         ; Atualiza F(n-1) para o valor calculado
		add		r3, r3, #1     ; Incrementa o contador de termos
		b		loop1          ; Volta para loop1
		
loop2
		mov		r0, #0         ; Fim
		
		

		;=================QUEST�O	2 | Felipe Pontes | Sistemas Digitais 2 ===============================
		
		;Usando	la�os: fa�a um c�digo que calcule os 30 primeiros
		;termos	da sequ�ncia de Fibonacci
		;e		os guarde na mem�ria de dados para isso utilize um la�o,
		;sabendo	que os dois primeiros termos da sequ�ncia s�o
		;F(0)	= 1 e F(1) = 1 e que o n-�simo termo � dado por
		;F(n)	= F(n?1)+F(n?2).
		
		
		;Aprendendo	sobre operandos de mem�ria:
		
		
		
		
		
		
		mov		r0, #256         ; Inicializa o endere�o de mem�ria para armazenar os termos
		mov		r1, #1         ; Inicializa o primeiro termo da sequ�ncia (F(0))
		mov		r2, #1         ; Inicializa o segundo termo da sequ�ncia (F(1))
		str		r1, [r0], #4  ; Armazena o primeiro termo na mem�ria e incrementa o endere�o
		str		r2, [r0], #4   ; Armazena o segundo termo na mem�ria e incrementa o endere�o
		mov		r3, #2         ; Inicializa o contador de termos
		
loop1
		cmp		r3, #30        ; Compara o contador com 30
		beq		loop2          ; Se atingir 30 termos, vai para loop2
		add		r4, r1, r2     ; Calcula o pr�ximo termo (F(n) = F(n-1) + F(n-2))
		str		r4, [r0], #4  ; Armazena o pr�ximo termo na mem�ria e incrementa o endere�o
		mov		r1, r2         ; Atualiza F(n-2) para o valor de F(n-1)    ;Demorei para pegar essa l�gica
		mov		r2, r4         ; Atualiza F(n-1) para o valor calculado
		add		r3, r3, #1     ; Incrementa o contador de termos
		b		loop1          ; Volta para loop1
		
loop2
		mov		r0, #0         ; Fim
		
		
		

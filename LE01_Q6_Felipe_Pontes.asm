		;----------------------------	QUEST�O 6 -----------------------
		;[FELIPE	PONTES] - - - - - 27/04/2024
		
		;===================================================================================================================================================================
		;Q06)	Uso de algoritmos cl�ssicos: fa�a um c�digo que calcule a divis�o euclidiana entre dois n�meros e salve os valores de quociente e resto na mem�ria de dados.
		;OBS:	Divis�o Euclidiana: di
		;dv
		;di		= dv � q + r (1) ------------>>>>   q = ( di - r(1) ) / dv
		;em		que:
		;�		di = dividendo;
		;�		dv = divisor;
		;�		q = quociente;
		;�		r = resto;
		;{di,	dv, q, r} ? N e dv ? 0.
		
		;		di  |dv
		;		r   |_____
		;		q
		;====================================================================================
		
			; Carregar valores iniciais
		mov		R0, #0x100  ; Endere�o inicial da mem�ria de dados
		mov		R1, #10     ; Dividendo (por exemplo: 10)
		mov		R2, #2      ; Divisor (por exemplo: 2)
		mov		R3, #0      ; Contador de loop
		mov		R4, #0      ; Resultado parcial (quociente)
		mov		R5, #0      ; Resto da divis�o
		
		; Loop principal da Divis�o Euclidiana
loop
		; Comparar R1 com R2 (dividendo com divisor)
		cmp		R1, R2
		bge		fim_loop    ; Se R1 >= R2, ir para o fim do loop
		
		; Subtrair R2 de R1 e atualizar R4 e R5
		sub		R1, R1, R2  ; Reduz o dividendo pelo divisor
		add		R4, R4, #1  ; Incrementa o quociente
		
		; Bin�rio para o in�cio do loop
		b		loop
		
fim_loop
		; Calcular o resto (R5)
		mov		R5, R1      ; O resto � o valor final do dividendo ap�s o loop
		
		; Salvar quociente (R4) na mem�ria de dados
		str		R4, [R0]    ; Salvar o quociente em 0x100
		
		; Salvar resto (R5) na mem�ria de dados
		str		R5, [R0, #4] ; Salvar o resto em 0x104

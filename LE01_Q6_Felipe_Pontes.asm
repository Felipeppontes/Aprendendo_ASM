		;----------------------------	QUESTÃO 6 -----------------------
		;[FELIPE	PONTES] - - - - - 27/04/2024
		
		;===================================================================================================================================================================
		;Q06)	Uso de algoritmos clássicos: faça um código que calcule a divisão euclidiana entre dois números e salve os valores de quociente e resto na memória de dados.
		;OBS:	Divisão Euclidiana: di
		;dv
		;di		= dv × q + r (1) ------------>>>>   q = ( di - r(1) ) / dv
		;em		que:
		;•		di = dividendo;
		;•		dv = divisor;
		;•		q = quociente;
		;•		r = resto;
		;{di,	dv, q, r} ? N e dv ? 0.
		
		;		di  |dv
		;		r   |_____
		;		q
		;====================================================================================
		
			; Carregar valores iniciais
		mov		R0, #0x100  ; Endereço inicial da memória de dados
		mov		R1, #10     ; Dividendo (por exemplo: 10)
		mov		R2, #2      ; Divisor (por exemplo: 2)
		mov		R3, #0      ; Contador de loop
		mov		R4, #0      ; Resultado parcial (quociente)
		mov		R5, #0      ; Resto da divisão
		
		; Loop principal da Divisão Euclidiana
loop
		; Comparar R1 com R2 (dividendo com divisor)
		cmp		R1, R2
		bge		fim_loop    ; Se R1 >= R2, ir para o fim do loop
		
		; Subtrair R2 de R1 e atualizar R4 e R5
		sub		R1, R1, R2  ; Reduz o dividendo pelo divisor
		add		R4, R4, #1  ; Incrementa o quociente
		
		; Binário para o início do loop
		b		loop
		
fim_loop
		; Calcular o resto (R5)
		mov		R5, R1      ; O resto é o valor final do dividendo após o loop
		
		; Salvar quociente (R4) na memória de dados
		str		R4, [R0]    ; Salvar o quociente em 0x100
		
		; Salvar resto (R5) na memória de dados
		str		R5, [R0, #4] ; Salvar o resto em 0x104

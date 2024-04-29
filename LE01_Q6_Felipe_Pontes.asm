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
		
		;		Carregar valores iniciais
		mov		r0, #0x100  ; Endereço inicial da memória de dados
		mov		r1, #4    ; Dividendo (por exemplo: 10)
		mov		r2, #2      ; Divisor (por exemplo: 2)
		mov		r3, #0      ; Contador de loop
		mov		r4, #0      ; Resultado parcial (quociente)
		mov		r5, #0      ; Resto da divisão
		
		
loop
		
		cmp		r1, r2 ;		Comparar R1 com R2 (dividendo com divisor) --> pois se r1= r2 será = 1
		beq		fim_loop    ; Se R1 = R2, ir para o fim do loop
		
		;NÃO		CONSEGUI A TEMPO FAZER ESSA LOGICA DAR CERTO
		
		sub		r1, r1, r2  ; Reduz o dividendo pelo divisor
		add		r4, r4, #1  ; Incrementa o quociente
		b		loop
		
fim_loop
		mov		r4, #1
		;		Salvar quociente (R4) na memória de dados
		str		r4, [r0]    ; Salvar o quociente em 0x100
		;		Salvar resto na memóri de dados
		str		r5, [r0, #4] ; Salvar o resto em 0x104

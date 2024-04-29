		;-----------------------	QUETÃO 7 -------------------
		;[FELIPE	PONTES] - - - - - 29/04/2024
		;================================================================================================================================
		;Q07)	7. Implemente o algoritmo de Euclides para calcular o MDC entre dois números inteiros m e n, em que 0 ? n < m, cuja uma implementação em C^2:
		;		/ / Para c a l c u l a r o mdc (m, n ) para 0 <= n < m
		;i		n t e u c l i d e s _ m d c ( i n t m, i n t n )
		;		{
		;		if ( n ==0){
		;
		;		r e t u r n m;
		;}
		;		r e t u r n   e u c l i d e s _ m d c ( n , m % n ) ;
		;}
		;e		salve o resultado na memória de dados.
		;==================================================================================================================================================
		
		;		Definição do algoritmo de Euclides para calcular o MDC entre dois números inteiros m e n
		;		onde 0 ≤ n < m
		;		Parâmetros de entrada:
		;		R0: Valor de m
		;		R1: Valor de n
		;		Retorno:
		;		R0: Resultado do MDC
		;==============================================================================
		mov		R2, #0        ; Inicializa R2 como zero ---(contador)
		mov		R3, #0         ; Inicializa R3 como zero --- (variável temporária)
		;		Verifica se n == 0
		cmp		R1, #0
		beq		fim             ; Se n == 0, retorna m e fim
		
		;		Loop lógica  de Euclides --> NÃO CHEGUEI NA LÓGICA CORRETA
loop2	subs		R3, R0, R1     ; Calcula m % n e armazena em R3
		bge		loop2   ; Se R3 >= 0, continua o loop
		mov		R0, R1         ; Atualiza m com o valor de n
		mov		R1, R3         ; Atualiza n com o valor de m % n
		b		loop2   ; Volta para o início do loop
		;		 retornaria o resultado do MDC em R0
		
fim		; Armazena o resultado MDCna memória de dados
		str		R0, [R4]       ; Salva o resultado (MDC) na memória de dados


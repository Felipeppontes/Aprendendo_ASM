			;-----------------------	QUET�O 7 -------------------
			;[FELIPE	PONTES] - - - - - 29/04/2024
			;================================================================================================================================
			;Q07)	7. Implemente o algoritmo de Euclides para calcular o MDC entre dois n�meros inteiros m e n, em que 0 ? n < m, cuja uma implementa��o em C^2:
			;		/ / Para c a l c u l a r o mdc (m, n ) para 0 <= n < m
			;i		n t e u c l i d e s _ m d c ( i n t m, i n t n )
			;		{
			;		if ( n ==0){
			;
			;		r e t u r n m;
			;}
			;		r e t u r n   e u c l i d e s _ m d c ( n , m % n ) ;
			;}
			;e		salve o resultado na mem�ria de dados.
			;==================================================================================================================================================
			
			
			;		Carregar valores iniciais
			mov		R0, #0x100 ; Endere�o inicial da mem�ria de dados
			mov		R1, #10    ; N�mero m (por exemplo: 15)
			mov		R2, #5     ; N�mero n (por exemplo: 5)
			mov		R3, #0     ; Vari�vel auxiliar
			
euclides
			;		Comparar n com zero
			cmp		R2, #0
			beq		fim_euclides ; Se n = 0, ir para o fim do algoritmo
			
			;		Substituir n por m % n
			mov		R3, R1     ; Salvar m em R3
			sub		R1, R1, R2 ; m = m - n
			mov		R2, R3     ; n = m (salvo em R3)
			
			;		Binar para o in�cio do loop
			b		euclides
			
fim_euclides
			;		Salvar MDC (n) na mem�ria de dados
			str		R2, [R0] ; Salvar o MDC em 0x100

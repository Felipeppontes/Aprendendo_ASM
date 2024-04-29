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
			
			
			;		Carregar valores iniciais
			mov		R0, #0x100 ; Endereço inicial da memória de dados
			mov		R1, #10    ; Número m (por exemplo: 15)
			mov		R2, #5     ; Número n (por exemplo: 5)
			mov		R3, #0     ; Variável auxiliar
			
euclides
			;		Comparar n com zero
			cmp		R2, #0
			beq		fim_euclides ; Se n = 0, ir para o fim do algoritmo
			
			;		Substituir n por m % n
			mov		R3, R1     ; Salvar m em R3
			sub		R1, R1, R2 ; m = m - n
			mov		R2, R3     ; n = m (salvo em R3)
			
			;		Binar para o início do loop
			b		euclides
			
fim_euclides
			;		Salvar MDC (n) na memória de dados
			str		R2, [R0] ; Salvar o MDC em 0x100

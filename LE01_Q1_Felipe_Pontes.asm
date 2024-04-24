		;Questão	1 feita por Felipe Pontes.
		
		;•		carregue os valores {0x12, 0x12AB, 0x12AB34 , 0x12AB34CD} nos registradores R0 ao R3, respectivamente;
		;•		Após isso, salve esses registradores R0 ao R3 na memória de dados nos endereços 0x100 ao 0x10C, respectivamente;
		;•		Por fim, leia e memória de dados e salve nos registradores R8 ao R11.
		
			;		Carregar valores divididos em registradores usando LSL, ADD e MOV
		
		;		Carregar 0x12 em R0 e R1 (dividido em duas partes de 8 bits)
		mov		R0, #0x00
		mov		R1, #0x12
		
		;		Carregar 0x12AB em R2 e R3 (dividido em duas partes de 8 bits)
		mov		R2, #0x00
		mov		R3, #0x12
		lsl		R3, R3, #8      ;  Desloca R3 8 bits para a esquerda
		add		R3, R3, #0xAB   ; Adiciona 0xAB a R3
		
		;		Carregar 0x12AB34 em R2 e R3 (dividido em duas partes de 8 bits)
		mov		R1, R3          ; copia valor de R3 para R1
		mov		R2, R3          ; Copia valor de R3 para R2
		lsl		R2, R2, #8      ;  Desloca R2 8 bits para a esquerda
		add		R2, R2, #0x34   ; Adiciona 0x34 a R2
		mov		R3, #0x00
		add		R3, R3, R1      ; Adiciona R1 a R3
		
		;		Carregar 0x12AB34CD em R3 (dividido em duas partes de 8 bits)
		mov		R2, R3          ; copia valor de R3 para R2
		lsl		R2, R2, #8      ; Desloca R2 8 bits para a esquerda
		add		R2, R2, #0xCD   ; Adiciona 0xCD a R2
		mov		R3, #0x00
		add		R3, R3, R2      ; Adiciona R2 a R3
		SUB		R2, R3, #0XCD		; EU FIZ NA IGNORÂNCIA POIS JÁ ESTAVA SEM PACIENCIA KKK
		ADD		R2, R2, #0X34
		mov		R0, #0x12
		
		
		;		Salvar valores na memória de dados
		ldr		R4, =0x100 ; Carregar endereço inicial da memória de dados em R4
		
		str		R0, [R4] ; Salvar R0 em 0x100
		add		R4, R4, #4 ; Incrementar o ponteiro de memória em 4 bytes
		str		R1, [R4] ; Salvar R1 em 0x104
		add		R4, R4, #4 ; Incrementar o ponteiro de memória em 4 bytes
		str		R2, [R4] ; Salvar R2 em 0x108
		add		R4, R4, #4 ; Incrementar o ponteiro de memória em 4 bytes
		str		R3, [R4] ; Salvar R3 em 0x10C
		
		
	
		
		;		Ler valores da memória de dados e salvar nos registradores
		
		ldr		R8,  [R8, #0x100] ; Ler 0x100 em R8
		ldr		R9,  [R9, #0x104] ; Ler 0x104 em R9
		ldr		R10, [R10, #0x108] ; Ler 0x108 em R10
		ldr		R11,  [R11, #0x10C] ; Ler 0x10C em R11
		
		

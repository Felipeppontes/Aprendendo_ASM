		;Questão	1 feita por Felipe Pontes.
		
		;•		carregue os valores {0x12, 0x12AB, 0x12AB34 , 0x12AB34CD} nos registradores R0 ao R3, respectivamente;
		;•		Após isso, salve esses registradores R0 ao R3 na memória de dados nos endereços 0x100 ao 0x10C, respectivamente;
		;•		Por fim, leia e memória de dados e salve nos registradores R8 ao R11.
		
		;		Carregar valores divididos em registradores usando LSL, ADD e MOV
		
		
		
		
		
		
		
		
		;---------Carregar	0x12 em R0 e R1 (dividido em duas partes de 8 bits)--------------
		mov		R0, #0x00
		mov		R1, #0x12
		;		Carregar 0x12AB em R2 e R3 (dividido em duas partes de 8 bits)
		mov		R2, #0x00
		mov		R3, #0x12
		lsl		R3, R3, #8     ; Desloca R3 8 bits para a esquerda
		add		R3, R3, #0xAB ; Adiciona 0xAB a R3
		;		Carregar 0x12AB34 em R2 e R3 (dividido em duas partes de 8 bits)
		mov		R1, R3         ; copia valor de R3 para R1
		mov		R2, R3         ; Copia valor de R3 para R2
		lsl		R2, R2, #8     ; Desloca R2 8 bits para a esquerda
		add		R2, R2, #0x34 ; Adiciona 0x34 a R2
		mov		R3, #0x00
		add		R3, R3, R1     ; Adiciona R1 a R3
		
		;		Carregar 0x12AB34CD em R3 (dividido em duas partes de 8 bits)
		mov		R2, R3         ; copia valor de R3 para R2
		lsl		R2, R2, #8     ; Desloca R2 8 bits para a esquerda
		add		R2, R2, #0xCD ; Adiciona 0xCD a R2
		mov		R3, #0x00
		add		R3, R3, R2     ; Adiciona R2 a R3
		
		SUB		R2, R3, #0xCD  ; Isso estava sobrando aqui
		ADD		R2, R2, #0x34 ; E aqui também
		mov		R3, R2         ; Copia valor de R2 para R3
		lsl		R3, R3, #8     ; Desloca R3 8 bits para a esquerda
		add		R3, R3, #0xCD ; Adiciona 0xCD a R3
		mov		R0, #0x12
		
		
		;--------------Salvar	valores na memória de dados-------------------------
		ldr		R4, =0x200     ; Carregar endereço inicial da memória de dados em R4  ; PROFESSOR EU NÃO ENTENDI MUITO BEM O ERRO COM O ENDEREÇO 0X100, LOGO EU PARTIR PARA O ENDEREEÇO 0X200 E SEGUI O MESMO PADRÃO
		
		str		R0, [R4]       ; Salvar R0 em 0x200
		add		R4, R4, #4     ; Incrementar o ponteiro de memória em 4 bytes
		str		R1, [R4]       ; Salvar R1 em 0x204
		add		R4, R4, #4     ; Incrementar o ponteiro de memória em 4 bytes
		str		R2, [R4]       ; Salvar R2 em 0x208
		add		R4, R4, #4     ; Incrementar o ponteiro de memória em 4 bytes
		str		R3, [R4]       ; Salvar R3 em 0x20C
		
		
		;-------------Ler	valores da memória de dados e salvar nos registradores ---------------
		;		Carregar os valores da memória de dados para os registradores R8 ao R11
		ldr		R4, =0x200     ; Carregar o endereço inicial da memória de dados em R4
		ldr		R8, [R4]       ; Carregar o valor em 0x200 para R8
		add		R4, R4, #4     ; Incrementar o ponteiro de memória em 4 bytes
		ldr		R9, [R4]       ; Carregar o valor em 0x204 para R9
		add		R4, R4, #4     ; Incrementar o ponteiro de memória em 4 bytes
		ldr		R10, [R4]      ; Carregar o valor em 0x208 para R10
		add		R4, R4, #4     ; Incrementar o ponteiro de memória em 4 bytes
		ldr		R11, [R4]      ; Carregar o valor em 0x20C para R11

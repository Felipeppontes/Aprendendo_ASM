		;Questão	1 feita por Felipe Pontes.
		
		;•		carregue os valores {0x12, 0x12AB, 0x12AB34 , 0x12AB34CD} nos registradores R0 ao R3, respectivamente;
		;•		Após isso, salve esses registradores R0 ao R3 na memória de dados nos endereços 0x100 ao 0x10C, respectivamente;
		;•		Por fim, leia e memória de dados e salve nos registradores R8 ao R11.
		
		;		Carregar valores nos registradores
		
		mov		R0, #0x12  ; Carregar 0x12 em R0
		mov		R1, #0x12AB ; Carregar 0x12AB em R1
		mov		R2, #0x12AB34 ; Carregar 0x12AB34 em R2
		mov		R3, #0x12AB34CD ; Carregar 0x12AB34CD em R3
		
		;		Salvar valores na memória de dados
		
		str		R0, [R0, #0x100] ; Salvar R0 em 0x100
		str		R1, [R1, #0x104] ; Salvar R1 em 0x104
		str		R2, [R2, #0x108] ; Salvar R2 em 0x108
		str		R3, [R3, #0x10C] ; Salvar R3 em 0x10C
		
		;		Ler valores da memória de dados e salvar nos registradores
		
		ldr		R8,  [R8, #0x100] ; Ler 0x100 em R8
		ldr		R9,  [R9, #0x104] ; Ler 0x104 em R9
		ldr		R10, [R10, #0x108] ; Ler 0x108 em R10
		ldr		R11,  [R11, #0x10C] ; Ler 0x10C em R11
		
		
		;MINHA	DÚVIDA É ESSE ERRO QUE ESTÁ ACONTECENDO NA LINHA 10

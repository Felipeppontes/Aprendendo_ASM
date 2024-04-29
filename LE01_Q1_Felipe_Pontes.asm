		;---------------------------Questão	1 ---------------------------------- [feita por Felipe Pontes]
		;Q01)
		;•		carregue os valores {0x12, 0x12AB, 0x12AB34 , 0x12AB34CD} nos registradores R0 ao R3, respectivamente;
		;•		Após isso, salve esses registradores R0 ao R3 na memória de dados nos endereços 0x100 ao 0x10C, respectivamente;
		;•		Por fim, leia e memória de dados e salve nos registradores R8 ao R11.
		
		;		Carregar valores divididos em registradores usando LSL, ADD e MOV
		;======================================================================================================================
		
		
		
		
		
		
		
		;---------Carregar	0x12 em R0 e R1 (dividido em duas partes de 8 bits)--------------
		mov		r0, #0x00
		mov		r1, #0x12
		;		carregar 0x12ab em r2 e r3
		mov		r2, #0x00
		mov		r3, #0x12
		lsl		r3, r3, #8     ; Desloca r3 8 bits para a esquerda
		add		r3, r3, #0xab ; adiciona 0xab a r3
		;		carregar 0x12ab34 em r2 e r3
		mov		r1, r3         ; Copia valor de r3 para r1
		mov		r2, r3         ; Copia valor de r3 para r2
		lsl		r2, r2, #8     ; desloca r2 8 bits para a esquerda
		add		r2, r2, #0x34 ; adiciona 0x34 a r2
		mov		r3, #0x00
		add		r3, r3, r1     ; Adiciona r1 a r3
		
		;		carregar 0x12ab34cd em r3
		mov		r2, r3         ; copia valor de r3 para r2
		lsl		r2, r2, #8     ; desloca r2 8 bits para a esquerda
		add		r2, r2, #0xcd ; Adiciona 0xcd a r2
		mov		r3, #0x00
		add		r3, r3, r2     ; adiciona r2 a r3
		sub		r2, r3, #0xcd  ; isso estava sobrando aqui
		add		r2, r2, #0x34 ; e aqui também
		mov		r3, r2         ; copia valor de r2 para r3
		lsl		r3, r3, #8     ; desloca r3 8 bits para a esquerda
		add		r3, r3, #0xcd ; adiciona 0xcd a r3
		mov		r0, #0x12

		
		;--------------salvar	valores na memória de dados
		ldr		r4, =0x200     ; carregar endereço inicial da memória de dados em r4  ; professor eu não entendi muito bem o erro com o endereço 0x100, logo eu partir para o endereeeço 0x200 e segui o mesmo padrão
		str		r0, [r4]       ; salvar r0 em 0x200
		add		r4, r4, #4     ; incrementa memória em 4 bytes
		str		r1, [r4]       ; salvar r1 em 0x204
		add		r4, r4, #4     ; incrementar memória m 4 bytes
		str		r2, [r4]       ; salvar r2 em 0x208
		add		r4, r4, #4     ; incrementar dememória em 4 byte
		str		r3, [r4]       ; salvar r3 em 0x20c

		
		;-------------ler	valores da memória de dados e salvar nos registradores
		;		carregar os valores da memória de dados para os registradores r8 ao r11
		ldr		r4, =0x200     ; carregar o endereço inicial da memória de dados em r4
		ldr		r8, [r4]       ; carregar o valor em 0x200 para r8
		add		r4, r4, #4     ; incrementar memória em 4 bytes
		ldr		r9, [r4]       ; carregar o valor em 0x204 para r9
		add		r4, r4, #4     ; incrementar memória em 4 bytes
		ldr		r10, [r4]      ; carregar o valor em 0x208 para r10
		add		r4, r4, #4    
		ldr		r11, [r4]      ; carregar o valor em 0x20c para r11

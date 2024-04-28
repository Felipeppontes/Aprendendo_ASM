		;--------------Quest�o	4-----------
		;[Felipe	Pontes] - - - - 26/04/24
		;Multiplica��o	em baixo n�vel:
		;fa�a	um c�digo que calcule a multiplica��o entre dois n�meros e salve a resposta na mem�ria de dados.
		
		
		;		Defini��o dos registradores e endere�os de mem�ria
		
		
		;		carregar valores
		MOV		r0, #256      ; Endere�o inicial da mem�ria de dados
		mov		r1, #4      ; Multiplicador
		mov		r2, #25       ; Multiplicando
		mov		r3, #0        ; Vari�vel contadora de ciclos
		mov		r4, #0        ; Vari�vel para armazenar o resultado parcial
		
		;		Salvar os valores na mem�ria
		str		r1, [r0]      ; Salva o multiplicador no primeiro endere�o da mem�ria
		str		r2, [r0, #4]  ; Salva o multiplicando no segundo endere�o da mem�ria
		
loop
		cmp		r3, r1        ; Compara o contador com o multiplicador
		beq		loop1         ; Se atingir o multiplicador, vai para loop1
		add		r4, r4, r2    ; Adiciona o multiplicando ao resultado parcial
		add		r3, r3, #1    ; Incrementa o contador
		b		loop         ; Volta para loop
		
loop1
		str		r4, [r0, #8]  ; Salva o resultado no terceiro endere�o da mem�r
		
		
		
		
		
		

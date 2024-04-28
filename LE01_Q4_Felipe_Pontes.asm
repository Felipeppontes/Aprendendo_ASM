		;--------------Questão	4-----------
		;[Felipe	Pontes] - - - - 26/04/24
		;Multiplicação	em baixo nível:
		;faça	um código que calcule a multiplicação entre dois números e salve a resposta na memória de dados.
		
		
		;		Definição dos registradores e endereços de memória
		
		
		;		carregar valores
		MOV		r0, #256      ; Endereço inicial da memória de dados
		mov		r1, #4      ; Multiplicador
		mov		r2, #25       ; Multiplicando
		mov		r3, #0        ; Variável contadora de ciclos
		mov		r4, #0        ; Variável para armazenar o resultado parcial
		
		;		Salvar os valores na memória
		str		r1, [r0]      ; Salva o multiplicador no primeiro endereço da memória
		str		r2, [r0, #4]  ; Salva o multiplicando no segundo endereço da memória
		
loop
		cmp		r3, r1        ; Compara o contador com o multiplicador
		beq		loop1         ; Se atingir o multiplicador, vai para loop1
		add		r4, r4, r2    ; Adiciona o multiplicando ao resultado parcial
		add		r3, r3, #1    ; Incrementa o contador
		b		loop         ; Volta para loop
		
loop1
		str		r4, [r0, #8]  ; Salva o resultado no terceiro endereço da memór
		
		
		
		
		
		

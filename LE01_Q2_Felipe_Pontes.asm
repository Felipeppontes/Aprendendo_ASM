		;=================QUESTÃO	2 | Felipe Pontes | Sistemas Digitais 2 ===============================
		
		;Usando	laços: faça um código que calcule os 30 primeiros
		;termos	da sequência de Fibonacci
		;e		os guarde na memória de dados para isso utilize um laço,
		;sabendo	que os dois primeiros termos da sequência são
		;F(0)	= 1 e F(1) = 1 e que o n-ésimo termo é dado por
		;F(n)	= F(n?1)+F(n?2).
		;==============================================================================================
		
		;Aprendendo	sobre operandos de memória:
		
		
		
		
		
		
		mov		r0, #256         ; Inicializa o endereço de memória para armazenar os termos --> 0x100
		mov		r1, #1         ; Inicializa o primeiro termo da sequência F(0)
		mov		r2, #1         ;  segundo termo da sequência F(1)
		str		r1, [r0], #4  ; Armazena o primeiro na memória e incrementa o endereço --> 0x104
		str		r2, [r0], #4   ; Armazena o segundo na memria e incrementa o endereço
		mov		r3, #2         ; Inicializa o contador de termos 
		
loop1	cmp		r3, #30        ; Compara o contador com 30
;"Branch if Equal" (desvio se igual) deq
		beq		loop2          ; Se atingir 30 termos, vai para loop2 -->
		add		r4, r1, r2     ; Calcula o próximo termo F(n) = F(n-1) + F(n-2)
		str		r4, [r0], #4  ; armazena o próximo termo na memória e incrementa o endereço
		mov		r1, r2         ; Atualiza F(n-2) para o valor de F(n-1)    ;Demorei para pegar essa lógica
		mov		r2, r4         ; Atualiza F(n-1) para o valor calculadi
		add		r3, r3, #1     ; Incrementa o contadoe
		b		loop1        
loop2
		mov		r0, #0         
		
		
		

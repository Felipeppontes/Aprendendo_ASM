			;---------------------Quest�o	5---------------------
			;[FELIPE	PONTES] ---- 27/04/2024
			;Q5)		Reutilizando c�digo: fa�a um c�digo que calcula o fatorial de um n�mero, para isso, rea-proveite o c�digo feito
			;para	calcular a multiplica��o entre dois n�mero. Salve o resultado na mem�ria de dados.
			;=============================================================================================
			
			
			MOV		R0, #0x100     ; Endere�o inicial da mem�ria de dados
			MOV		R1, #2       ; N�mero para calcular o fatorial (exemplo: 5)
			MOV		R4, #1         ; Inicializa o resultado com 1 (fatorial)
			BL		fatorial       ; Chama a sub-rotina para calcular o fatorial
			B		sair
			
fatorial
			SUBS		R1, R1, #1     ; Decrementa o n�mero (R1) em 1
			BEQ		done           ; Se o n�mero for 1, encerra o c�lculo do fatorial
			BL		multiplica     ; Chama a sub-rotina para multiplicar R4 por R1
			B		fatorial       ; Continua o loop para calcular o fatorial
			
multiplica
			MOV		R2, R4         ; Move o valor acumulado do fatorial para R2
			MOV		R3, R1         ; Move o n�mero a ser decrementado para R3
			MOV		R5, #0         ; Zera o registrador de resultado tempor�rio
			
loop_mul
			ADD		R5, R5, R2     ; Adiciona o valor acumulado do fatorial ao resultado tempor�rio
			SUBS		R3, R3, #1     ; Decrementa o n�mero a ser decrementado
			BNE		loop_mul       ; Se o n�mero n�o for zero, continua o loop
			MOV		R4, R5         ; Atualiza o resultado acumulado do fatorial
			MOV		PC, LR         ; Retorna para a instru��o que chamou a sub-rotina
			
done
			;Armazena	o resultado (fatorial) na mem�ria de dados
			STR		R4, [R0, #0]   ; Salva o resultado (fatorial) na mem�ria de dados
			
sair
			
			
			
			
			;ESTOU	PERTO POIS O PROGRAMA EST� CALCULADNO SEMPRE O VALOR DE R1-1

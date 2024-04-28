			;---------------------Questão	5---------------------
			;[FELIPE	PONTES] ---- 27/04/2024
			;Q5)		Reutilizando código: faça um código que calcula o fatorial de um número, para isso, rea-proveite o código feito
			;para	calcular a multiplicação entre dois número. Salve o resultado na memória de dados.
			;=============================================================================================
			
			
			MOV		R0, #0x100     ; Endereço inicial da memória de dados
			MOV		R1, #2       ; Número para calcular o fatorial (exemplo: 5)
			MOV		R4, #1         ; Inicializa o resultado com 1 (fatorial)
			BL		fatorial       ; Chama a sub-rotina para calcular o fatorial
			B		sair
			
fatorial
			SUBS		R1, R1, #1     ; Decrementa o número (R1) em 1
			BEQ		done           ; Se o número for 1, encerra o cálculo do fatorial
			BL		multiplica     ; Chama a sub-rotina para multiplicar R4 por R1
			B		fatorial       ; Continua o loop para calcular o fatorial
			
multiplica
			MOV		R2, R4         ; Move o valor acumulado do fatorial para R2
			MOV		R3, R1         ; Move o número a ser decrementado para R3
			MOV		R5, #0         ; Zera o registrador de resultado temporário
			
loop_mul
			ADD		R5, R5, R2     ; Adiciona o valor acumulado do fatorial ao resultado temporário
			SUBS		R3, R3, #1     ; Decrementa o número a ser decrementado
			BNE		loop_mul       ; Se o número não for zero, continua o loop
			MOV		R4, R5         ; Atualiza o resultado acumulado do fatorial
			MOV		PC, LR         ; Retorna para a instrução que chamou a sub-rotina
			
done
			;Armazena	o resultado (fatorial) na memória de dados
			STR		R4, [R0, #0]   ; Salva o resultado (fatorial) na memória de dados
			
sair
			
			
			
			
			;ESTOU	PERTO POIS O PROGRAMA ESTÁ CALCULADNO SEMPRE O VALOR DE R1-1

programa {
	funcao inicio() { //exercício 04 da parte 03
		inteiro x, y, resultado
		escreva("Digite o valor de x: ")
		leia(x)
		escreva("Digite o valor de y: ")
		leia(y)
		
		resultado = calcularPotenciaComLoop(x, y)
		escreva("Resultado (com loop) de ", x, " elevado a ", y, ": ", resultado, "\n")

		resultado = calcularPotencia(x, y)
		
		escreva("Resultado (recursivo) de ", x, " elevado a ", y, ": ", resultado, "\n")
	}
	
	funcao inteiro calcularPotencia(inteiro x, inteiro y) {

        //escreva("x: ", x, " y: ", y, "\n")
        //critério de parada
        se (y == 0) {
            retorne 1
        }
	    
	    //calcular o novo valor
	    y--
	    
	    //faz a chamada recursiva
	    inteiro result = calcularPotencia(x, y)
	    
	    //efetuar o cálculo e retorna
	    retorne x * result
	}

    funcao inteiro calcularPotenciaComLoop(inteiro x, inteiro y) {
        inteiro resultado = 1
		para(inteiro i = 1; i <= y; i++) {
		    //escreva("x: ", x, " resultado: ", resultado, " y: ", y, " i: ", i, "\n")
		    resultado = resultado * x
		}
        retorne resultado
    }
}

programa {
	funcao inicio() { //exerc�cio 02 da lista 01
		
		inteiro resultadoSoma
		inteiro resultadoSub
		inteiro resultadoMult
		real resultadoDiv
		inteiro valorA
		inteiro valorB
		
		resultadoSoma = somar(2, 3)
		escreva("Resultado da soma: " + resultadoSoma, "\n")
		
		resultadoSub = subtrair(9, 4)
		escreva("Resultado da subtra��o: " + resultadoSub, "\n")

        resultadoMult = multiplicar(15, 3)
        escreva("Resultado da multipica��o: "+ resultadoMult, "\n")
        
        resultadoDiv = dividir(8, 4.0)
        escreva("Resultado da divis�o: "+ resultadoDiv, "\n")
        
        resultadoDiv = dividir(9, 4.0)
        escreva("Resultado da divis�o: "+ resultadoDiv, "\n")
        
        resultadoDiv = dividir(9, 0.0)
        escreva("Resultado da divis�o: "+ resultadoDiv, "\n")
        
//		escreva("Digite os dois valores: ")
//		leia(valorA)
//		leia(valorB)
//		resultadoSoma = somar(valorA, valorB)
//		escreva("Resultado da soma: " + resultadoSoma, '\n')
	}
	
	funcao real dividir(inteiro dividendo, real divisor) {
	    se (divisor != 0.0) {
    	    retorne dividendo / divisor
    	    
    	   //escreva("Teste") //vai dar erro de compila��o, pq n�o podemos ter comandos ap�s o retorne (n�o alcan��vel)
	    }
	    escreva("N�o � poss�vel fazer divis�o por zero.\n")
	    retorne 0.0 //valor que representa um erro de divis�o por zero. Observa��o: ele pode ser confundido com um valor correto
        //escreva("Teste") //vai dar erro de compila��o, pq n�o podemos ter comandos ap�s o retorne (n�o alcan��vel)
	}
	
	funcao inteiro multiplicar(inteiro operando1, inteiro operando2) {
	    retorne operando1 * operando2
	}
	
	funcao inteiro somar(inteiro a, inteiro b) {
	    inteiro result
	    result = a + b
	    
	    retorne result
	}
	
	funcao inteiro subtrair(inteiro a, inteiro b) {
	    inteiro result = a - b
	    retorne result
	}
}


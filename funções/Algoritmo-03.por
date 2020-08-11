programa {
	funcao inicio() { //exercício 02 da lista 01
		
		inteiro resultadoSoma
		inteiro resultadoSub
		inteiro resultadoMult
		real resultadoDiv
		inteiro valorA
		inteiro valorB
		
		resultadoSoma = somar(2, 3)
		escreva("Resultado da soma: " + resultadoSoma, "\n")
		
		resultadoSub = subtrair(9, 4)
		escreva("Resultado da subtração: " + resultadoSub, "\n")

        resultadoMult = multiplicar(15, 3)
        escreva("Resultado da multipicação: "+ resultadoMult, "\n")
        
        resultadoDiv = dividir(8, 4.0)
        escreva("Resultado da divisão: "+ resultadoDiv, "\n")
        
        resultadoDiv = dividir(9, 4.0)
        escreva("Resultado da divisão: "+ resultadoDiv, "\n")
        
        resultadoDiv = dividir(9, 0.0)
        escreva("Resultado da divisão: "+ resultadoDiv, "\n")
        
//		escreva("Digite os dois valores: ")
//		leia(valorA)
//		leia(valorB)
//		resultadoSoma = somar(valorA, valorB)
//		escreva("Resultado da soma: " + resultadoSoma, '\n')
	}
	
	funcao real dividir(inteiro dividendo, real divisor) {
	    se (divisor != 0.0) {
    	    retorne dividendo / divisor
    	    
    	   //escreva("Teste") //vai dar erro de compilação, pq não podemos ter comandos após o retorne (não alcançável)
	    }
	    escreva("Não é possível fazer divisão por zero.\n")
	    retorne 0.0 //valor que representa um erro de divisão por zero. Observação: ele pode ser confundido com um valor correto
        //escreva("Teste") //vai dar erro de compilação, pq não podemos ter comandos após o retorne (não alcançável)
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


programa {
	funcao inicio() { //exercício 01
		
		inteiro resultadoSoma
		inteiro valorA
		inteiro valorB
		
		resultadoSoma = somar(2, 3)
		escreva("Resultado da soma: " + resultadoSoma, "\n")
		
		resultadoSoma = somar(5, 9)
		escreva("Resultado da soma: " + resultadoSoma, '\n')
		
		escreva("Digite os dois valores: ")
		leia(valorA)
		leia(valorB)
		resultadoSoma = somar(valorA, valorB)
		escreva("Resultado da soma: " + resultadoSoma, '\n')
	}
	
	//f(a,b) = a + b
	funcao inteiro somar(inteiro a, inteiro b) {
	    inteiro result
	    result = a + b
	    
	    retorne result
	}
}


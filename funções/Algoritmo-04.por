programa {
	funcao inicio() { //exercício 03 da lista 01

		inteiro valor1
		inteiro valor2
		
		escreva("Digite o 1o valor: ")
		leia(valor1)
		escreva("Digite o 2o valor: ")
		leia(valor2)
		
		calcular(valor1, valor2)
	}
	
	funcao calcular(inteiro valor1, inteiro valor2) {
	    real resultado
	    resultado = somar(valor1, valor2)
	    escreva("Resultado da soma: ", resultado, "\n")
	    
	    resultado = subtrair(valor1, valor2)
	    escreva("Resultado da subtrair: ", resultado, "\n")
	    
	    resultado = multiplicar(valor1, valor2)
	    escreva("Resultado da multiplicação: ", resultado, "\n")

        resultado = dividir(valor1, valor2)
	    escreva("Resultado da divisão: ", resultado, "\n")
	}
	
	funcao real dividir(inteiro dividendo, real divisor) {
	    se (divisor != 0.0) {
    	    retorne dividendo / divisor
    	}
	    escreva("Não é possível fazer divisão por zero.\n")
	    retorne 0.0 //valor que representa um erro de divisão por zero. Observação: ele pode ser confundido com um valor correto
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

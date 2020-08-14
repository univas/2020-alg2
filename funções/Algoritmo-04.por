programa {
	funcao inicio() { //exerc�cio 03 da lista 01

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
	    escreva("Resultado da multiplica��o: ", resultado, "\n")

        resultado = dividir(valor1, valor2)
	    escreva("Resultado da divis�o: ", resultado, "\n")
	}
	
	funcao real dividir(inteiro dividendo, real divisor) {
	    se (divisor != 0.0) {
    	    retorne dividendo / divisor
    	}
	    escreva("N�o � poss�vel fazer divis�o por zero.\n")
	    retorne 0.0 //valor que representa um erro de divis�o por zero. Observa��o: ele pode ser confundido com um valor correto
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

programa {
	funcao inicio() { //exercício 04 da parte 03
		inteiro numero, resultado
		escreva("Digite o valor de N: ")
		leia(numero)

		resultado = fibonacci(numero)
		escreva("Resultado: ", resultado, "\n")

	}
	
	funcao inteiro fibonacci(inteiro numero) {

        //critério de parada
        se (numero == 1 ou numero == 2) {
            retorne 1
        }
	    
	    //faz as 2 chamadas recursivas
	    inteiro parte1 = fibonacci(numero - 1)

	    inteiro parte2 = fibonacci(numero - 2)
	    
	    //efetuar o cálculo e retorna
	    retorne parte1 + parte2
	}

}

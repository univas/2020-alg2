programa {
	funcao inicio() { //exemplo para escopo de vari�veis

		inteiro valor1
		inteiro valor2
		
		escreva("Digite o 1o valor: ")
		leia(valor1)
		escreva("Digite o 2o valor: ")
		leia(valor2)
		
		calcularDobrado(valor1, valor2)
	}
	
	funcao calcularDobrado(inteiro x, inteiro y) { //dobra primeiro os valores, para depois calcular

        x = 1 //essa mudan�a n�o afeta a vari�vel da fun��o chamadora (inicio)
              //cuidado para n�o perder o valor origial do par�metro (por acidente)
        
	    x = x * 2 //calcula e armazena o x dobrado
        y = y * 2 //idem
	    
	    real resultado
	    resultado = somar(x, y)
	    escreva("Resultado da soma: ", resultado, "\n")
	    
	    resultado = subtrair(x, y)
	    escreva("Resultado da subtrair: ", resultado, "\n")
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

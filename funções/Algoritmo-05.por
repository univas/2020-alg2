programa {
	funcao inicio() { //exemplo para escopo de variáveis

		inteiro valor1
		inteiro valor2
		
		escreva("Digite o 1o valor: ")
		leia(valor1)
		escreva("Digite o 2o valor: ")
		leia(valor2)
		
		calcularDobrado(valor1, valor2)
	}
	
	funcao calcularDobrado(inteiro x, inteiro y) { //dobra primeiro os valores, para depois calcular

        x = 1 //essa mudança não afeta a variável da função chamadora (inicio)
              //cuidado para não perder o valor origial do parâmetro (por acidente)
        
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

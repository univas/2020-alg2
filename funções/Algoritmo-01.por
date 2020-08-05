programa {
	funcao inicio() {
	    inteiro resultado
	    inteiro valor
	    
		cumprimentar() //chamando a função cumprimentar
		cumprimentar()
		cumprimentar()
		
		xyz()
		calcularImpostoDeRendaDePessoaFisica()
		
		resultado = multiplicarPorDois(3) //a variável 'resultado' recebe o valor retornado pela função
		escreva("Valor resultante: " , resultado, "\n")
		
		escreva("Digite um valor: ")
		leia(valor)
		resultado = multiplicarPorDois(valor) //o conteúdo da variável 'valor' é passado como parâmetro da função
		escreva("Valor resultante: " , resultado) 
	}
	
	funcao cumprimentar() { //definindo a função primeiraFuncao
	    escreva("Hello World from primeiraFuncao!!!\n")
	}
	
	//f(x) = x * 2
	funcao inteiro multiplicarPorDois(inteiro x) { //'x' é um parâmetro que recebe um valor externo
	    inteiro y
	    y = x * 2
	    
	    retorne y //o valor da variável 'y' é retornado pela função
	}
	
	funcao xyz() { //essa função calcula o imposto de renda de pessoa física
	    //exemplo de função de nome sem semântica. É difícil saber o que ela faz olhando seu nome
	}
	
	funcao calcularImpostoDeRendaDePessoaFisica() { //essa função calcula o imposto de renda de pessoa física (comentário óbvio?)
	    //escreva("Hello World from primeiraFuncao!!!\n") //não faz sentido dentro dessa função
	}
	
	funcao calcIRPF() { //outro exemplo de nome de função
	    
	}
}

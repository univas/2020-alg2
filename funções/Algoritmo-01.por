programa {
	funcao inicio() {
	    inteiro resultado
	    inteiro valor
	    
		cumprimentar() //chamando a fun��o cumprimentar
		cumprimentar()
		cumprimentar()
		
		xyz()
		calcularImpostoDeRendaDePessoaFisica()
		
		resultado = multiplicarPorDois(3) //a vari�vel 'resultado' recebe o valor retornado pela fun��o
		escreva("Valor resultante: " , resultado, "\n")
		
		escreva("Digite um valor: ")
		leia(valor)
		resultado = multiplicarPorDois(valor) //o conte�do da vari�vel 'valor' � passado como par�metro da fun��o
		escreva("Valor resultante: " , resultado) 
	}
	
	funcao cumprimentar() { //definindo a fun��o primeiraFuncao
	    escreva("Hello World from primeiraFuncao!!!\n")
	}
	
	//f(x) = x * 2
	funcao inteiro multiplicarPorDois(inteiro x) { //'x' � um par�metro que recebe um valor externo
	    inteiro y
	    y = x * 2
	    
	    retorne y //o valor da vari�vel 'y' � retornado pela fun��o
	}
	
	funcao xyz() { //essa fun��o calcula o imposto de renda de pessoa f�sica
	    //exemplo de fun��o de nome sem sem�ntica. � dif�cil saber o que ela faz olhando seu nome
	}
	
	funcao calcularImpostoDeRendaDePessoaFisica() { //essa fun��o calcula o imposto de renda de pessoa f�sica (coment�rio �bvio?)
	    //escreva("Hello World from primeiraFuncao!!!\n") //n�o faz sentido dentro dessa fun��o
	}
	
	funcao calcIRPF() { //outro exemplo de nome de fun��o
	    
	}
}

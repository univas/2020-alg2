programa {
	funcao inicio() { //exercício 04 da lista 01
		inteiro ano
		escreva("Digite o ano: ")
		leia(ano)
		logico bissexto = ehBissexto(ano)
		escreva("O ano ", ano, " é bissexto? ", bissexto)
	}
	
	funcao logico ehBissexto(inteiro ano) {
	    logico ehBissexto = (ano % 4 == 0 ou ano % 100 == 0 ou ano % 400 == 0) //não precisa do parêntesis
	    retorne ehBissexto
	}
}

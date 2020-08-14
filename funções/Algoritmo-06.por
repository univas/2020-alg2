programa {
	funcao inicio() { //exercício 04 da lista 01
		inteiro ano
		escreva("Digite o ano: ")
		leia(ano)
		logico bissexto = ehBissexto_V1(ano)
		escreva("O ano ", ano, " é bissexto? ", bissexto)
	}
	
	funcao logico ehBissexto_V1(inteiro ano) { //TODO: Exercício: corrigir a lógica. Usar OU ao invés de E
	    logico ehBissexto = falso
	    
	    se (ano % 4 == 0) {//condição 1: se o ano for múltiplo de 4
	        se (ano % 100 == 0) { // condição E e condição 2 (ano for múltiplo de 100)
	            se (ano % 400 == 0) {// condição 1 E condição 2 E condição 3 (ano for múltiplo de 400)
        	        ehBissexto = verdadeiro
	            }
	        }
	    }
	    retorne ehBissexto
	}

	funcao logico ehBissexto_V2(inteiro ano) { //TODO: atualizar para o cálculo completo
	    logico ehBissexto = ano % 4 == 0
	    retorne ehBissexto
	}

	funcao logico ehBissexto_V3(inteiro ano) { //TODO: atualizar para o cálculo completo
	    retorne ano % 4 == 0
	}
}


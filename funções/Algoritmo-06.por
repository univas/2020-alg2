programa {
	funcao inicio() { //exerc�cio 04 da lista 01
		inteiro ano
		escreva("Digite o ano: ")
		leia(ano)
		logico bissexto = ehBissexto_V1(ano)
		escreva("O ano ", ano, " � bissexto? ", bissexto)
	}
	
	funcao logico ehBissexto_V1(inteiro ano) { //TODO: Exerc�cio: corrigir a l�gica. Usar OU ao inv�s de E
	    logico ehBissexto = falso
	    
	    se (ano % 4 == 0) {//condi��o 1: se o ano for m�ltiplo de 4
	        se (ano % 100 == 0) { // condi��o E e condi��o 2 (ano for m�ltiplo de 100)
	            se (ano % 400 == 0) {// condi��o 1 E condi��o 2 E condi��o 3 (ano for m�ltiplo de 400)
        	        ehBissexto = verdadeiro
	            }
	        }
	    }
	    retorne ehBissexto
	}

	funcao logico ehBissexto_V2(inteiro ano) { //TODO: atualizar para o c�lculo completo
	    logico ehBissexto = ano % 4 == 0
	    retorne ehBissexto
	}

	funcao logico ehBissexto_V3(inteiro ano) { //TODO: atualizar para o c�lculo completo
	    retorne ano % 4 == 0
	}
}


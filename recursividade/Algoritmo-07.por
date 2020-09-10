programa {
	funcao inicio() { //exercício 05 da parte 03 - com recursividade
		inteiro numeroMaximo, i
		escreva("Digite o valor de N: ")
		leia(numeroMaximo)

        para(i = 1; i <= numeroMaximo; i++) {
            se (ehPrimoRecursivo(i, 2)) {
                escreva("Número: ", i, " é primo\n")
            }
        }
	}
	
	funcao logico ehPrimoRecursivo(inteiro numero, inteiro controle) {
	    
	    se (numero == 1 ou numero == 2) {
	        retorne verdadeiro
	    }
    	se (controle == numero) { //não achou nenhum divisível
    	    retorne verdadeiro
    	}
	    se (numero % controle == 0) { //se o número é divisível por controle
		    retorne falso
    	}
    	
    	retorne ehPrimoRecursivo(numero, controle + 1)
	}
}

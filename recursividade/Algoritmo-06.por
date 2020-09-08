programa {
	funcao inicio() { //exercício 05 da parte 03 - sem recursividade
		inteiro numero, cont
		escreva("Digite o valor de N: ")
		leia(numero)

        para(cont = 1; cont <= numero; cont++) {
            se (ehPrimo(cont)) {
                escreva("Número: ", cont, " é primo\n")
            }
        }
	}
	
	funcao logico ehPrimo(inteiro numero) {
	    
	    inteiro cont
	    para(cont = 2; cont < numero; cont++) { //verifica se o número é divisível por algum valor de 2 até ele
    	    se (numero % cont == 0) { 
		        retorne falso
    		}
		}
		retorne verdadeiro
	}
}

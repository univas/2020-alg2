programa {
	funcao inicio() { //exercício 06 da parte 03 - sem recursividade
		inteiro numero
		
		escreva("Digite um número: ")
		leia(numero)
		
		para (inteiro i = 1; i <= numero; i++) {
    		ehQuadradoPerfeito(i)
        }
	}
	
	funcao logico ehQuadradoPerfeito(inteiro numero) {
	    inteiro soma = 0, quantidade = 0
	    inteiro impar = 1
	    
	    enquanto (soma < numero) {
	        soma = soma + impar
	        quantidade++
	        impar = impar + 2
	    }
	    
	    se (soma == numero) {
    	    escreva("Raiz quadrada de ", numero ,": ", quantidade, "\n")
    	    retorne verdadeiro
	    }
	    retorne falso
	}
}

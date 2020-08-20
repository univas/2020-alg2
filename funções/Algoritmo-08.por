programa { //exercício 01 da parte 02
    //escopo global - é visível por todas as funções dentro do programa
    const inteiro qtdElementos = 10 //constante: o valor não pode ser modificado

	funcao inicio() {
		inteiro vetor [] = {2,5,8,1,5,3,2,5,5,2}

		imprimeVetor(vetor)
		//criar os cenários de teste
		para(inteiro number = 0; number < qtdElementos; number++) {
    	    escreva("Quantidade de ", number, ": ", contaOcorrencias(vetor, number), "\n")
		}
	}
	
	//retorna a quantidade de vezes que um número procurado aparece no vetor
	funcao inteiro contaOcorrencias(inteiro vetor[], inteiro procurado) {
	    inteiro quantidade = 0
	    para(inteiro idx = 0; idx < qtdElementos; idx++) {
	        se (vetor[idx] == procurado) {
	            quantidade++
	        }
	    }
	    retorne quantidade
	}
	
	funcao imprimeVetor(inteiro vetor[]) {
	    para(inteiro idx = 0; idx < qtdElementos; idx++) {
	        escreva(vetor[idx], ", ")
	    }
	    escreva("\n")
	}
}

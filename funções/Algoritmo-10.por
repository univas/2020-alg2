programa { //exercício 03 da lista 02
    const inteiro qtdElementos = 10
    
	funcao inicio() { //exercíco 03 da lista 02
		
		inteiro numerosParaAnalisar[] = {7,2,9,4,7,7,2,9,7,3}
		//resultado esperado
		//7: 4
		//2: 2
		//9: 2
		//4: 1
		//3: 1
		//inteiro numerosDistintos[qtdElementos] = {7,2,9,4,3}
		//inteiro qtdDeCadaNumero[qtdElementos] =  {4,2,2,1,1}

		contabilizaValoresDistintos(numerosParaAnalisar)
	}
	
	funcao contabilizaValoresDistintos(inteiro numeros[]) {
		inteiro numerosDistintos[qtdElementos]
		inteiro qtdDeCadaNumero[qtdElementos]
		
		//TODO: finalizar a implementação
	    
	    para(inteiro idx = 0; idx < qtdElementos; idx++) {
	        //TODO: finalizar a implementação
	    }
        imprimeResultado(numerosDistintos, qtdDeCadaNumero, qtdNumDistintos)
	}
	
	
	funcao inteiro buscarIndiceNumeroDistinto(inteiro numerosDistintos[], inteiro maxNumerosDistintos, inteiro numeroProcurado) {
	    para(inteiro i = 0; i < maxNumerosDistintos; i++) {
	        se (numerosDistintos[i] == numeroProcurado) {
	            retorne i
	        }
	    }
	    retorne -1
	}
	
	funcao imprimeResultado(inteiro numerosDistintos[], inteiro qtdDeCadaNumero[], inteiro qtdNumDistintos) {
	    para(inteiro j = 0; j < qtdNumDistintos; j++) {
	        escreva(numerosDistintos[j], ": ", qtdDeCadaNumero[j], "\n")
	    }
	}
}

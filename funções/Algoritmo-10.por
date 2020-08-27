programa {
    const inteiro qtdElementos = 10
    
	funcao inicio() { //exercíco 03 da lista 02
		
		inteiro numerosParaAnalisar[] = {7,2,9,4,7,7,2,9,7,3}
		//resultado esperado
		//7: 4
		//2: 2
		//9: 2
		//4: 1
		//inteiro numerosDistintos[qtdElementos] = {7,2,9,4,3}
		//inteiro qtdDeCadaNumero[qtdElementos] =  {4,2,2,1,1}

		contabilizaValoresDistintos(numerosParaAnalisar)
	}
	
	funcao contabilizaValoresDistintos(inteiro numeros[]) {
	    
	    inteiro qtdNumDistintos = 0
	    inteiro idxNumDistintos
	    inteiro numerosDistintos[qtdElementos]
	    inteiro qtdDeCadaNumero[qtdElementos]
        inteiro idxNumeroProcurado
        
	    para(inteiro idx = 0; idx < qtdElementos; idx++) {
	        
	        idxNumeroProcurado = pegarIdxNumeroDistinto(numerosDistintos, qtdNumDistintos, numeros[idx])
	        se (idxNumeroProcurado == -1) { //não achou. É um número novo
	            numerosDistintos[qtdNumDistintos] = numeros[idx]
	            qtdDeCadaNumero[qtdNumDistintos]++
	            qtdNumDistintos++
	        } senao {
	            numerosDistintos[idxNumeroProcurado] = numeros[idx]
	            qtdDeCadaNumero[idxNumeroProcurado]++
	        }
	    }
	    imprimeResultado(numerosDistintos, qtdDeCadaNumero, qtdNumDistintos)
	}
	
	funcao inteiro pegarIdxNumeroDistinto(inteiro numerosDistintos[], inteiro maxNumerosDistintos, inteiro numeroProcurado) {
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

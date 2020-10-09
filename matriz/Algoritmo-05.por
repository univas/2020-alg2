programa {
    const inteiro MAX_COLS = 5
    const inteiro MAX_ROWS = 5
    
	funcao inicio() { //exercício 06 da lista 2
		inteiro cidades [][] = {
		    {0,5,7,4,6},
		    {5,0,0,2,0},
		    {7,0,0,1,3},
		    {4,2,1,0,0},
		    {6,0,3,0,0}
		}

		//lerMatrizDoTeclado(cidades)
		
		para(inteiro idxOrigem = 0; idxOrigem < MAX_ROWS; idxOrigem++) { //navega em todas as cidades de origem
    		imprimirCidadesVisinhas(cidades, idxOrigem)//para cada cidade de origem, imprime as vizinhas
		}
	}
	
	//imprime as cidades vizinhas de apenas uma cidade
	funcao imprimirCidadesVisinhas(inteiro matriz [][], inteiro idxCidadeOrigem) {
	    escreva("Cidades vizinhas de ", idxCidadeOrigem, ": ")
	    para(inteiro idxCidadeDestino = 0; idxCidadeDestino < MAX_COLS; idxCidadeDestino++) {
	        se(matriz[idxCidadeOrigem][idxCidadeDestino] > 0) { //as cidades são vizinhas?
	            escreva(" ", idxCidadeDestino)
	        }
	    }
	    escreva("\n")
	}
	
	funcao lerMatrizDoTeclado(inteiro matriz [][]) {
        para(inteiro row = 0; row < MAX_ROWS; row++) {
            para(inteiro col = 0; col < MAX_COLS; col++) {
                escreva("Digite o valor para a matriz: ", row, "|", col, ": ")
                leia(matriz[row][col])
            }
		}
	}
}

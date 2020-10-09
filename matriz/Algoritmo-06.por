programa {
    inclua biblioteca Util
    
	const inteiro MAX_COLS = 5
    const inteiro MAX_ROWS = 5
    
	funcao inicio() { //exercício 07 da lista 2
	    
		inteiro matriz [][] = {
		    {0,5,7,4,6},
		    {5,0,0,2,0},
		    {7,0,0,1,3},
		    {4,2,1,0,0},
		    {6,0,3,0,0}
		}
		
		//criarMatrizFixaAleatoria(matriz, 1, 20)
		
		inteiro idxLinhaInicio, idxColunaInicio
		inteiro idxLinhaFim, idxColunafim
		
		escreva("Digite a linha inicial: ")
		leia(idxLinhaInicio)
		escreva("Digite a coluna inicial: ")
		leia(idxColunaInicio)
		escreva("Digite a linha final: ")
		leia(idxLinhaFim)
		escreva("Digite a coluna final: ")
		leia(idxColunafim)
		
		imprimirSubmatriz(matriz, idxLinhaInicio, idxColunaInicio, idxLinhaFim, idxColunafim)
		
		imprimirMatriz(matriz)
	}
	
	//criar a função
	funcao imprimirSubmatriz(inteiro matriz [][], inteiro idxLinhaInicio, inteiro idxColunaInicio, inteiro idxLinhaFim, inteiro idxColunafim) {
	    para(inteiro row = idxLinhaInicio; row <= idxLinhaFim; row++) {
	        para(inteiro col = idxColunaInicio; col <= idxColunafim; col++) {
	            escreva(matriz[row][col], " ")
	        }
	        escreva("\n")
	    }
	}
	
	funcao criarMatrizFixaAleatoria(inteiro matriz[][], inteiro valorMin, inteiro valorMax) {
	    para(inteiro i = 0; i < MAX_ROWS; i++) { //salva valores aleatórios na matriz
            para(inteiro j = 0; j < MAX_COLS; j++) {
                matriz[i][j] = Util.sorteia(valorMin, valorMax) //gera um valor aletório entre valorMin e valorMax
            }
        }
	}
	
	funcao imprimirMatriz(inteiro matriz[][]) {
	    para(inteiro row = 0; row < MAX_ROWS; row++) {
            para(inteiro col = 0; col < MAX_COLS; col++) {
                escreva(matriz[row][col], " ")
            }
        escreva("\n")
        }
	}
}

programa { //testes com matriz identidade
    inclua biblioteca Util
    
    const inteiro MAX_COLS = 4
    const inteiro MAX_ROWS = 4
    
	funcao inicio() {
		inteiro matrizQuadrada [MAX_ROWS][MAX_COLS] //matriz quadrada
		
//		lerMatrizDoTeclado(matrizQuadrada)
//		imprimirMatriz(matrizQuadrada)
		
		//escreva("Matriz aleatória: \n")
		//criarMatrizFixaAleatoria(matrizQuadrada, 1, 50)
		//imprimirMatriz(matrizQuadrada)
		
		escreva("Matriz identidade: \n")
		criarMatrizIdentidade(matrizQuadrada)
		imprimirMatriz(matrizQuadrada)
	}
	
	funcao criarMatrizIdentidade(inteiro matriz[][]) { //a matriz precisa estar zerada
	    para(inteiro i = 0; i < MAX_ROWS; i++) {
            matriz[i][i] = 1
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
        
	funcao lerMatrizDoTeclado(inteiro matriz [][]) {
	    
	    para(inteiro row = 0; row < MAX_ROWS; row++) {
		    para(inteiro col = 0; col < MAX_COLS; col++) {
		        escreva("Digite o valor para a matriz: ", row, "|", col, ": ")
		        leia(matriz[row][col])
		    }
		}
	}
}

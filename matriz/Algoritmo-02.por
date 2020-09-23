programa { //gerando uma matriz com valores aleatórios e impressão
	
	inclua biblioteca Util

    const inteiro MAX_ROWS = 4
    const inteiro MAX_COLS = 10
    
	funcao inicio() {
	    inteiro matrizOne [MAX_ROWS] [MAX_COLS]
	    
        //gerar uma matriz com valores fixos
        para(inteiro i = 0; i < MAX_ROWS; i++) { //salva valores aleatórios na matriz
            para(inteiro j = 0; j < MAX_COLS; j++) {
                matrizOne[i][j] = Util.sorteia(1, 50) //gera um valor aletório entre 1 e 50
            }
        }
        
        //imprimir a matriz
        imprimirMatriz(matrizOne)
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

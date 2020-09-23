programa { //vários testes: declaração, inincialização, atribuição e acesso

	const inteiro MAX_ROWS = 3
	const inteiro MAX_COL = 4

	funcao inicio() {
		inteiro matrixExampleOne [3][4] //3 linhas e 4 colunas
		
		inteiro matrixExampleTwo [MAX_ROWS][MAX_COL] //3 linhas e 4 colunas
		
		inteiro vectorOne [] = {6,2,8,5}
		
		inteiro matrixExampleThree [][] = { {9,8,7,6} , {5,4,3,2}, {1,2,3,4} } //cada vetor inteiro é uma linha da matriz

		escreva("matThree - Elemento da coluna 1 linha 2: ", matrixExampleThree[1][2], "\n") //acessa um elemento na matriz
		escreva("matThree - Elemento 2:3: ", matrixExampleThree[2][3], "\n") //erro por causa da inconsistência da matrix
		escreva("matThree - Elemento 0:3: ", matrixExampleThree[0][3], "\n") //erro pois não existe, caso não colocar o 6
		
		escreva("matOne - Elemento 0:1: ", matrixExampleOne[0][1], "\n")

		matrixExampleOne[0][0] = 1 //usando índices fixos
		matrixExampleOne[0][1] = 2
		matrixExampleOne[0][2] = 3
		matrixExampleOne[0][3] = 4

		escreva("matOne - Elemento 0:1 again: ", matrixExampleOne[0][1], "\n")
		
        inteiro rowOne = 1
        inteiro indexCol = 0
        matrixExampleOne[rowOne][indexCol] = 5 //usando índices com variáveis
        indexCol++
        matrixExampleOne[rowOne][indexCol] = 6
        indexCol++
        matrixExampleOne[rowOne][indexCol] = 7
        indexCol++
        matrixExampleOne[rowOne][indexCol] = 8
        
		escreva("matOne - Elemento 1:3 again: ", matrixExampleOne[rowOne][3], "\n")
		
		//acessando à matriz usando repetição
		
		para(inteiro row = 0; row < MAX_ROWS; row++) { //caminha em todas as linhas
		    
		    //escreva(matrixExampleThree[row][0], " ")
		    
		    para(inteiro col = 0; col < MAX_COL; col++) { //caminha em todas as colunas
		        
		        escreva(matrixExampleThree[row][col], " ")
		    }
		    escreva("\n")
		}
	}
}

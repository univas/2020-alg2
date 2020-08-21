programa { //exercício 02 da parte 02
	
    const inteiro qtdElementos = 5
    
	funcao inicio() {
		inteiro vetor1[] = {1,4,6,7,9}
		inteiro vetor2[] = {1,3,4,5,8}
		
		//resultado esperado
		//1 1 3 4 4 5 6 7 8 9
		imprimeOrdenado(vetor1, vetor2)
	}
	
	funcao imprimeOrdenado(inteiro vetor1[], inteiro vetor2[]) {
	    inteiro idx1 = 0
	    inteiro idx2 = 0
	    para(inteiro count = 0; count < qtdElementos * 2; count++) {
	        //escreva("Count: ", count, " idx1: ", idx1, " idx2: ", idx2, "\n")
	        
	        se (idx1 == qtdElementos) {
	            escreva(vetor2[idx2], " ")
	            idx2++
	        } senao se (idx2 == qtdElementos) {
	            escreva(vetor1[idx1], " ")
	            idx1++
	        } senao se (vetor1[idx1] <= vetor2[idx2]) {
	            escreva(vetor1[idx1], " ")
	            idx1++
	       } senao {
	            escreva(vetor2[idx2], " ")
	            idx2++
	       }
	    }
	}
}

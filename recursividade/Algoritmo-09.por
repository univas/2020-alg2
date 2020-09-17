programa {
	funcao inicio() { //exemplo de processamento antes ou depois da chamada recursiva
		imprimir(0, falso)
	}
	
	funcao imprimir(inteiro n, logico ordemNormal) {
	    se(ordemNormal) {
	        processar(n)
	    }
	    
		se(n < 5) {
			imprimir(n + 1, ordemNormal)
		}
		
	    se(nao ordemNormal) {
	        processar(n)
	    }
	}
	
	funcao processar(inteiro n) {
        escreva("n: ", n, "\n")
	}
}

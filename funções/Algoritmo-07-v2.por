programa {
	funcao inicio() { //exercício 05 da lista 01 - outra opção de implementação
    	inteiro diasPorMes [] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
        inteiro dia, mes, ano
        
        dia = 29
        mes = 2
        ano = 2000
        escreva(calculaProximoDia(dia, mes, ano, diasPorMes))
	}
	
	funcao cadeia calculaProximoDia(inteiro dia, inteiro mes, inteiro ano, inteiro diasPorMes[]) {
	    inteiro qtdDias = diasPorMes[mes-1] //o índice do vetor começa com zero
	    se (ehBissexto(ano) e mes == 2) {
	        qtdDias++
	    }
	    se (dia == qtdDias) {
	        dia = 1
	        se (mes == 12) {
	            mes = 1
	            ano = ano + 1
    	    } senao {
	            mes = mes + 1
    	    }
	    } senao {
	        dia = dia + 1
	    }
	    retorne dia + "/" + mes + "/" + ano
	}
	
	funcao logico ehBissexto(inteiro ano) {
	    logico ehBissexto = (ano % 4 == 0 ou ano % 100 == 0 ou ano % 400 == 0) //não precisa do parêntesis
	    retorne ehBissexto
	}
}


programa {
    
	funcao inicio() { //exercício 05 da lista 01 - outra opção de implementação
	
	    //a quantidade de dias de cada mês está indexada pela posição (index) do vetor
    	inteiro diasPorMes [] = {31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31}
    	
        escreva(calculaProximoDia(27, 2, 2021, diasPorMes), '\n')
        escreva(calculaProximoDia(28, 2, 2021, diasPorMes), '\n')
        escreva(calculaProximoDia(28, 2, 2020, diasPorMes), '\n')
        escreva(calculaProximoDia(29, 2, 2020, diasPorMes), '\n')
        escreva(calculaProximoDia(31, 1, 2020, diasPorMes), '\n')
        escreva(calculaProximoDia(31, 12, 2020, diasPorMes), '\n')
        escreva(calculaProximoDia(30, 6, 2020, diasPorMes), '\n')
        escreva(calculaProximoDia(15, 3, 2020, diasPorMes), '\n')
	}
	
	funcao cadeia calculaProximoDia(inteiro dia, inteiro mes, inteiro ano, inteiro diasPorMes[]) {
	    
	    //quantide máxima de dias daquele mês
	    inteiro qtdMaximaDiasDoMes = diasPorMes[mes-1] //o índice do vetor começa com zero
	    
	    se (ehBissexto(ano) e mes == 2) {
	        qtdMaximaDiasDoMes++
	    }
	    
	    retorne montarProximoDia(dia, mes, ano, qtdMaximaDiasDoMes)
	}
	
	funcao cadeia montarProximoDia(inteiro dia, inteiro mes, inteiro ano, inteiro qtdMaxDias) {
	    se (dia == qtdMaxDias) { //chegou no último dia do mês
	        dia = 1
	        se (mes == 12) { //chegou no último mês
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

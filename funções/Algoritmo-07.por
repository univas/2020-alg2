programa {
	funcao inicio() { //exercício 05 da lista 01
		inteiro dia
		inteiro mes
		inteiro ano
		inteiro proximoDia
		
//		escreva("Digite o dia, o mes e o ano: ")
//		leia(dia)
//		leia(mes)
//		leia(ano)

        dia = 29
        mes = 02
        ano = 2000
		
		proximoDia = calculaProximoDia(dia, mes, ano)
		escreva("O próximo dia é: ", proximoDia)
	}
	
	funcao inteiro calculaProximoDia(inteiro dia, inteiro mes, inteiro ano) { //TODO: retornar uma cadeia de caracteres com o dia/mês/ano
	    se (dia < 28) {
	        escreva("dia menor que 28\n") //usando log de debug
	        retorne dia + 1
	    }
	    se (mes == 2) { //o mês é fevereiro
	        escreva("o mês é fevereiro\n")
	        se (dia == 28) {
	            escreva("o dia é 28\n")
	            se (ehBissexto(ano)) { //ano bissexto
    	            escreva("o ano é bissexto\n")
	                retorne dia + 1 //aceita o 29
	            } senao {
	                escreva("o ano não é bissexto\n")
	                retorne 1
	            }
	        }
	        // sobrou o 29
	        escreva("o dia não é 28. O dia é: ", dia, "\n")
            retorne 1
	    } 
	    //o mês não é fevereiro
        se (mes == 4 ou mes == 6 ou mes == 9 ou mes == 11) { //abril, junho, setembro e novembro -->>> 30 dias
            escreva("o mês é abril, junho, setembro e novembro\n")
            se (dia < 30) {
                retorne dia + 1
            } senao {
                retorne 1
            }
        } senao { //meses que tem 31 dias
            escreva("o mês tem 31 dias (janeiro, março, maio, julho, agosto, outubro e dezembro)\n")
            se (dia < 31) {
                retorne dia + 1
            } senao {
                retorne 1
            }
        }
	}
	
	funcao logico ehBissexto(inteiro ano) {
	    logico ehBissexto = ano % 4 == 0 ou ano % 100 == 0 ou ano % 400 == 0
	    retorne ehBissexto
	}

}

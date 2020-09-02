programa {
	funcao inicio() {// exemplo de recursividade
		inteiro total
		total = somar(1) //chamada comum
		escreva("Resultado: ", total)
	}
	
	funcao inteiro somar(inteiro valor) {
	    escreva("Chamou a função 'somar' com valor: ", valor, "\n")
	    se (valor == 5) { //condição
	        retorne 5
	    }
	    inteiro temp, novoValor
	    novoValor = valor + 1
	    temp = valor + somar(novoValor) //chamada recursiva da função 'somar'
	    retorne temp
	}
}

programa {
    
    const inteiro MAX_ITENS = 3
    const inteiro MAX_QTD_INFO_PRODUTO = 1
    const inteiro MAX_QTD_INFO_ITEM = 2
    const inteiro PEDIDO_PRODUTO_CODIGO_COL_IDX = 0
    const inteiro PEDIDO_PRODUTO_QTD_COL_IDX = 1
    
	funcao inicio() { //exercício 05 da lista 2
		inteiro produtos[MAX_ITENS][MAX_QTD_INFO_PRODUTO]
		inteiro pedido[MAX_ITENS][MAX_QTD_INFO_ITEM]
		
		//TODO: implementar as chamadas das funções para rodar adequadamente
		
	}
	
	funcao calcularEImprimirValorDoPedido(inteiro produtos[][], inteiro pedido[][]) { //TODO: implementar
	    
	}
	
	funcao lerProdutos(inteiro produtos[][]) {
	    
	    para(inteiro row = 0; row <= MAX_ITENS; row++) {
	        escreva("Digite o valor do produto ", row, ": ")
	        leia(produtos[row][0])
	    }
	}
	
	funcao lerPedido(inteiro pedido[][]) {
	    para(inteiro row = 0; row <= MAX_ITENS; row++) { //TODO: discutir a quantidade máxima de itens (menor que MAX_ITENS)
	        escreva("Digite o código do produto: ")
	        leia(pedido[row][PEDIDO_PRODUTO_CODIGO_COL_IDX])
	        
	        escreva("Digite a quantidade do produto: ")
	        leia(pedido[row][PEDIDO_PRODUTO_QTD_COL_IDX])
	    }
	}
}

package br.edu.univas.si2.alg2;

public class StartApp {

	public static void main(String[] args) {
		
		Endereco meuEndereco = new Endereco(); //declara e inicializa a variável
		
		meuEndereco.numero = 250;
		meuEndereco.cidade = "Cachoeira de Minas";
		meuEndereco.estado = "Minas Gerais";
		
		System.out.println("Dados do meu endereço: ");
		System.out.println("Número: " + meuEndereco.numero);
		System.out.println("Cidade: " + meuEndereco.cidade);
		System.out.println("Estado: " + meuEndereco.estado);
		
		System.out.println(meuEndereco);
		
		imprimirEndereco(meuEndereco);
	}
	
	public static void imprimirEndereco(Endereco enderecoParaImprimir) {
		System.out.println("Imprimindo endereço dentro da função:");
		System.out.println("Número: " + enderecoParaImprimir.numero);
		System.out.println("Cidade: " + enderecoParaImprimir.cidade);
		System.out.println("Estado: " + enderecoParaImprimir.estado);
	}
}

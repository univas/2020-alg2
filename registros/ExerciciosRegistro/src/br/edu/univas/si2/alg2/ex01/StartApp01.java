package br.edu.univas.si2.alg2.ex01;

import java.util.Scanner;

public class StartApp01 {

	public static void main(String[] args) {
		
		Endereco meuEndereco = new Endereco(); //declara e inicializa a variável

		Scanner leitor = new Scanner(System.in);
		
		System.out.println("Digite o número, rua, cidade e estado: ");
		meuEndereco.numero = leitor.nextInt();
		leitor.nextLine();
		meuEndereco.rua = leitor.nextLine();
		meuEndereco.cidade = leitor.nextLine();
		meuEndereco.estado = leitor.nextLine();
				
		imprimirEndereco(meuEndereco);
		leitor.close();
	}
	
	public static void imprimirEndereco(Endereco enderecoParaImprimir) {
		System.out.println("Imprimindo endereço dentro da função:");
		System.out.println("Número: " + enderecoParaImprimir.numero);
		System.out.println("Rua: " + enderecoParaImprimir.rua);
		System.out.println("Cidade: " + enderecoParaImprimir.cidade);
		System.out.println("Estado: " + enderecoParaImprimir.estado);
	}
}

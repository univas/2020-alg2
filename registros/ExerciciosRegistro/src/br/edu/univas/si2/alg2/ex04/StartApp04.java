package br.edu.univas.si2.alg2.ex04;

import br.edu.univas.si2.alg2.ex01.Endereco;

public class StartApp04 {

	public static void main(String[] args) {
		Pessoa cliente1 = new Pessoa();
		cliente1.nome = "Roberto";
		cliente1.sexo = 'M';
		
		Endereco enderecoDoRoberto = new Endereco();
		enderecoDoRoberto.rua = "Rua A";
		enderecoDoRoberto.numero = 250;
		enderecoDoRoberto.cidade = "Cachoeira de Minas";
		enderecoDoRoberto.estado = "Minas Gerais";
		
		cliente1.residencia = enderecoDoRoberto;
		
		imprimir(cliente1);
	}
	
	public static void imprimir(Pessoa pessoa) {
		System.out.println("Imprimindo pessoa: " + pessoa.nome);
		System.out.println("Sexo: " + pessoa.sexo);
		System.out.println("Endereco: ");
		System.out.println("Rua: " + pessoa.residencia.rua);
		System.out.println("Número: " + pessoa.residencia.numero);
		System.out.println("Cidade: " + pessoa.residencia.cidade);
		System.out.println("Estado: " + pessoa.residencia.estado);
	}
}

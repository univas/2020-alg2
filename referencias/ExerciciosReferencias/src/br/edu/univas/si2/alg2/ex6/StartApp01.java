package br.edu.univas.si2.alg2.ex6;

import java.util.Scanner;

public class StartApp01 {

	public static Scanner leitor = new Scanner(System.in);
	
	public static void main(String[] args) {
		Pessoa pessoa = lerPessoa();
		imprimirPessoa(pessoa);
	}
	
	public static Pessoa lerPessoa() {
		Pessoa novaPessoa = new Pessoa();
		novaPessoa.nome = leitor.nextLine();
		novaPessoa.sexo = leitor.nextLine().charAt(0);
		
		Data nasc = lerData();
		novaPessoa.nascimento = nasc;
		
		char ehCasado = leitor.nextLine().charAt(0);
		if(ehCasado == 's') {
			novaPessoa.casamento = lerData();
		}
		return novaPessoa;
	}
	
	public static void imprimirPessoa(Pessoa alguem) {
		if(alguem == null) {
			System.out.println("A pessoa é null.");
			return;
		}
		System.out.println("Dados da pessoa: " + alguem.nome);
		System.out.println("Sexo: " + alguem.sexo);
		if(alguem.nascimento != null) {
			System.out.println("Nascimento: " 
				+ alguem.nascimento.dia + "/" 
				+ alguem.nascimento.mes + "/"
				+ alguem.nascimento.ano);
		} else {
			System.out.println("Erro: A pessoa não possui data de nascimento.");
		}
		if(alguem.casamento != null) {
			System.out.println("Casamento: "
					+ alguem.casamento.dia + "/"
					+ alguem.casamento.mes + "/"
					+ alguem.casamento.ano);
		} else {
			System.out.println("A pessoa ainda não casou.");
		}
	}

	public static Data lerData() {
		Data data = new Data();
		data.dia = leitor.nextInt();
		data.mes = leitor.nextInt();
		data.ano = leitor.nextInt();
		leitor.nextLine(); //consome o final de linha após a leitura do inteiro.
		return data;
	}
}

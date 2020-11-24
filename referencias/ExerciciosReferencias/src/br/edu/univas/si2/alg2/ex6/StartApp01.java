package br.edu.univas.si2.alg2.ex6;

import java.util.Scanner;

public class StartApp01 {

	public static Scanner leitor = new Scanner(System.in);
	
	public static void main(String[] args) {
		
	}
	public static Pessoa lerPessoa() {
		Pessoa novaPessoa = new Pessoa();
		novaPessoa.nome = leitor.nextLine();
		novaPessoa.sexo = leitor.nextLine().charAt(0);
		
		Data nasc = lerData();
		novaPessoa.nascimento = nasc;
		novaPessoa.casamento = lerData();
		
		return novaPessoa;
	}
	
	public static void imprimirPessoa(Pessoa alguem) {
		
	}

	public static Data lerData() {
		Data data = new Data();
		data.dia = leitor.nextInt();
		data.mes = leitor.nextInt();
		data.ano = leitor.nextInt();
		return data;
	}
}

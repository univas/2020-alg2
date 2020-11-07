package br.edu.univas.si2.alg2.teste;

public class TesteMain {

	public static void main(String[] args) {
		
		int x; //declaração da variável primitiva
		x = 2;
				
		Ponto pA = null; //declaração da variável "objeto"
		//pA.x = 2; //esse x não existe -> vai dar erro!!!! NullPointerException

		System.out.println("pA após a declaração da variável: " + pA);
		
		pA = new Ponto(); //alocando a memória para guardar um Ponto
		pA.x = 3; //esse x existe

		System.out.println("pA após alocar o objeto: " + pA);
		imprimir(pA);
		
		int vetor [] = null;
		System.out.println("Vetor: " + vetor);
		//System.out.println("Tentando acessar posição de um vetor null:" + vetor[0]); //erro
		vetor = new int [3];
		System.out.println("Tentando acessar posição de um vetor alocado:" + vetor[0]);
		
		Ponto pontos [] = null;
		pontos = new Ponto[2]; //guarda 2 referências para objetos Ponto
		pontos[0] = new Ponto();
		pontos[1] = pA;
		
		for (int i = 0; i < pontos.length; i++) {
			System.out.println("ponto na posição " + i + ": " + pontos[i]);
		}
	}
	
	public static void imprimir(Ponto p) {
		System.out.println("Imprimindo p: " + p);
	
		p.x = 2; //agora vai
		System.out.println("Ok.");
	}
}

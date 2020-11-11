package br.edu.univas.si2.alg2.teste;

import java.util.Scanner;

public class StartApp03 {

	public static Scanner leitor = new Scanner(System.in);

	public static void main(String[] args) {
		Ponto [] vetOrigem = new Ponto[30];
		Ponto [] vetDestino = null;//new Ponto[30];
		
		for (int i = 0; i < vetOrigem.length; i++) {
			System.out.print("Digite o ponto " + i + ": ");
			vetOrigem[i] = lerPonto();
		}

		copiarVetor(vetOrigem, vetDestino); //teste 1
		imprimirVetor(vetDestino);
		
		leitor.close();
	}
	
	//por enquanto copia apenas as referências
	public static void copiarVetor(Ponto vetorOrigem[], Ponto vetorDestino[]) {
		
		if(vetorOrigem == null) {
			System.out.println("O vetor de origem é null.");
			return;
		}
		if(vetorDestino == null) {
			System.out.println("O vetor de destino é null.");
			return;
		}
		
		int max = vetorOrigem.length;
		if(vetorDestino.length < max) { //caso os vetores forem de tamanhos diferentes
			max = vetorDestino.length;
			System.out.println("Vetor de destino é menor que o vetor de origem.");
		}
		for (int i = 0; i < max; i++) {
			vetorDestino[i] = vetorOrigem[i];
		}
	}
	
	public static void imprimirVetor(Ponto [] vetor) {
		System.out.println(vetor);
		if(vetor != null) {
			for (int i = 0; i < vetor.length; i++) {
				System.out.print("vetor na posição " + i + ": ");
				imprimirPonto(vetor[i]);
			}
		}
	}
	
	public static Ponto lerPonto() {
		
		Ponto ponto = new Ponto();
		System.out.println("Digite o valor de x: ");
		ponto.x = leitor.nextInt();
		System.out.println("Digite o valor de y: ");
		ponto.y = leitor.nextInt();
		return ponto;
	}
	
	public static void imprimirPonto(Ponto ponto) {
		if (ponto == null) {
			System.out.println("O ponto é null.");
		} else {
			System.out.println("Ponto: x: " + ponto.x + " y: " + ponto.y);
		}
	}
}

package br.edu.univas.si2.alg2.ex5;

import java.util.Scanner;

public class StartApp01 {

	public static Scanner leitor = new Scanner(System.in);
	
	public static void main(String[] args) {

		int quantidade = 10;
		
		Ponto [] pontos = new Ponto[quantidade];
		for (int i = 0; i < pontos.length; i++) {
			pontos[i] = lerPonto();
		}
		
		Ponto [] vetorRecortado = subVetor(pontos, 2, 5);
		imprimirVetor(vetorRecortado);
	}

	/**
	 * Cria um vetor novo com um recorte do vetor original.
	 * 
	 * @param vetorOriginal
	 * @param inicio Indica a posição inicial do recorte (inclusivo)
	 * @param fim Indica a posição final do recorte (inclusivo)
	 * @return Um vetor recortado.
	 */
	public static Ponto [] subVetor(Ponto vetorOriginal[], int inicio, int fim) {
		int tamanho = fim - inicio + 1; //ex: do 2 até o 5: tam = 5 - 2 + 1 = 4
		
		Ponto [] vetRecortado = new Ponto[tamanho];
		for (int i = inicio, j = 0; i <= fim; i++, j++) {
			vetRecortado[j] = vetorOriginal[i];
		}
		return vetRecortado;
	}
	
	public static Ponto lerPonto() {
		Ponto ponto = new Ponto();
		//System.out.println("Digite o valor de x: ");
		ponto.x = leitor.nextInt();
		//System.out.println("Digite o valor de y: ");
		ponto.y = leitor.nextInt();
		return ponto;
	}
	
	public static void imprimirVetor(Ponto[] vetor) {
		System.out.println(vetor);
		if (vetor != null) {
			for (int i = 0; i < vetor.length; i++) {
				if(vetor[i] != null) {
					System.out.println("vetor na posição " + i + ": x=" + vetor[i].x + " y=" + vetor[i].y);
				} else {
					System.out.println("vetor na posição é null.");
				}
			}
		}
	}
}

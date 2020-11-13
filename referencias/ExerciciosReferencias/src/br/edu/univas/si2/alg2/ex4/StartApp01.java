package br.edu.univas.si2.alg2.ex4;

import java.util.Date;
import java.util.Scanner;

public class StartApp01 {

	public static Scanner leitor = new Scanner(System.in);
	
	public static void main(String[] args) {
		
		int quantidade = 4;
		
		Ponto [] pontos = new Ponto[quantidade];
//		for (int i = 0; i < pontos.length - 10; i++) {
//			pontos[i] = lerPonto();
//		}
		
		pontos[0] = lerPonto();
		pontos[2] = lerPonto();
		pontos[3] = lerPonto();

		Ponto procurado = lerPonto();
		
		System.out.println("Terminou de ler: " + new Date());
		int result = buscarPonto(pontos, procurado);
		System.out.println("Resultado: " + result + " " + new Date());
	}
	
	public static int buscarPonto(Ponto [] vetor, Ponto procurado) {
		
		for (int i = 0; i < vetor.length; i++) {
			Ponto aVerificar = vetor[i];
			
			if(pontosIguais(aVerificar, procurado)) { //pontos iguais
				//achamos o ponto
				System.out.println("Achamos o ponto x: " + procurado.x + " y: " + procurado.y);
				return i; //interrompe a busca, e retorna o índice do elemento encontrado
			}
		}
		System.out.println("Não achou o ponto x: " + procurado.x + " y: " + procurado.y);
		return -1;
	}
	
	public static Ponto lerPonto() {
		Ponto ponto = new Ponto();
		//System.out.println("Digite o valor de x: ");
		ponto.x = leitor.nextInt();
		//System.out.println("Digite o valor de y: ");
		ponto.y = leitor.nextInt();
		return ponto;
	}
	
	public static boolean pontosIguais(Ponto pontoA, Ponto pontoB) {
		if(pontoA == null) {
			return false;
		}
		if(pontoB == null) {
			return false;
		}
		return pontoA.x == pontoB.x && pontoA.y == pontoB.y;
	}
}

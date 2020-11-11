package br.edu.univas.si2.alg2.teste;

public class StartApp02 {

	public static void main(String[] args) {
		Ponto [] vetor = new Ponto[3];
		
		Ponto p1 = new Ponto();
		Ponto p2 = new Ponto();
		Ponto p3 = new Ponto();
		vetor[0] = p1;
		vetor[1] = p2;
		vetor[2] = p3;

		p1.x = 2;
		p1.y = 3;
		imprimirPonto(p1);
		imprimirPonto(vetor[0]);
		
		p1.x = 4;
		imprimirPonto(vetor[0]);
		
		vetor[0].y = 7; // é a mesma coisa que: p1.y = 7;
		imprimirPonto(vetor[0]);
		
		imprimirPonto(p1);
	}
		
	public static void imprimirPonto(Ponto ponto) {
		if (ponto == null) {
			System.out.println("O ponto é null.");
		} else {
			System.out.println("Ponto: x: " + ponto.x + " y: " + ponto.y);
		}
	}
}

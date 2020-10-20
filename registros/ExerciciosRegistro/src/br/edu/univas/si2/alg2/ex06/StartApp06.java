package br.edu.univas.si2.alg2.ex06;

public class StartApp06 {

	public static void main(String[] args) {
		Ponto centro = new Ponto();
		centro.x = 3;
		centro.y = 3;
		
		int raio = 2;
		
		Ponto p1 = new Ponto();
		p1.x = 1;
		p1.y = 1;
		
		Ponto p2 = new Ponto();
		p2.x = 4;
		p2.y = 2;
		
		Ponto p3 = new Ponto();
		p3.x = 5;
		p3.y = 4;
		
		System.out.println("Ponto 1: " + dentroDoCirculo(centro, raio, p1));
		System.out.println("Ponto 2: " + dentroDoCirculo(centro, raio, p2));
		System.out.println("Ponto 3: " + dentroDoCirculo(centro, raio, p3));
	}
	
	public static boolean dentroDoCirculo(Ponto centro, int raio, Ponto p) {
		
		//TODO: implementar a lógica
		int valor = 0;
		
		double resultadoDaRaiz = Math.sqrt(valor);
		
		return false;
	}
}

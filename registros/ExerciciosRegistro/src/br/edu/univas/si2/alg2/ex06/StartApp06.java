package br.edu.univas.si2.alg2.ex06;

public class StartApp06 {

	public static void main(String[] args) {
		Ponto centro = new Ponto();
		centro.x = 3;
		centro.y = 3;
		
		int raio = 2;
		
		Ponto p1 = new Ponto(); //ponto E
		p1.x = 1;
		p1.y = 1;
		
		Ponto p2 = new Ponto(); //ponto C
		p2.x = 4;
		p2.y = 2;
		
		Ponto p3 = new Ponto(); //ponto D
		p3.x = 5;
		p3.y = 4;
		
		System.out.println("Ponto 1: " + dentroDoCirculo(centro, raio, p1));
		System.out.println("Ponto 2: " + dentroDoCirculo(centro, raio, p2));
		System.out.println("Ponto 3: " + dentroDoCirculo(centro, raio, p3));
	}
	
	public static boolean dentroDoCirculo(Ponto a, int raio, Ponto b) {
		
		System.out.println("dentro do método: dentroDoCirculo: raio: " + raio);
		//=raiz((xb - xa)^2  + (yb - ya)^2)
		//centro = pontoA
		//p = pontoB
		
		int parte1 =  b.x - a.x;
		int parte2 =  b.y - a.y;
		
		int valor = (parte1 * parte1 + parte2 * parte2);
		
		System.out.println("valor: " + valor);
		
		//valor = Math.abs(valor); //módulo
		
		double resultadoDaRaiz = Math.sqrt(valor);
		
		System.out.println("Raiz de " + valor + ": " + resultadoDaRaiz);
		
		return resultadoDaRaiz <= raio;
	}
}

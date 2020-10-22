package br.edu.univas.si2.alg2.ex10;

public class StartApp10 {

	public static void main(String[] args) {

		//TODO: Fazer o dezenho de outros corpos no plano cartesiano e fazer os testes
		
		Ponto pA = new Ponto();
		pA.x = 2;
		pA.y = 6;
		
		Ponto pB = new Ponto();
		pB.x = 6;
		pB.y = 2;

		Ponto pC = new Ponto();
		pC.x = 10;
		pC.y = 6;

		Ponto pD = new Ponto();
		pD.x = 6;
		pD.y = 10;

		Corpo corpo = new Corpo();
		corpo.pontos[0] = pA;
		corpo.pontos[1] = pB;
		corpo.pontos[2] = pC;
		corpo.pontos[3] = pD;
		corpo.quantidade = 4;
		
		Ponto centro = calcularCentroDeGravidade(corpo);
		System.out.println("Centro de gravidade: " + centro.x + ", " + centro.y);
	}

	public static Ponto calcularCentroDeGravidade(Corpo corpo) {
		Ponto centroDeGravidade = new Ponto();
		
		//TODO: implementar a lógica
		int max = 0;//??? //TODO: definir até onde faz o loop
		int i;
		for(i = 0; i < max; i++) {
			Ponto pontoTemp = corpo.pontos[i];
			//TODO: implementar
		}
		
		return centroDeGravidade;
	}
}

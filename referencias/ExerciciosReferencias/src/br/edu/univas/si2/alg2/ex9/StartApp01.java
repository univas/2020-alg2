package br.edu.univas.si2.alg2.ex9;

import java.util.Scanner;

public class StartApp01 {

	public static Scanner leitor = new Scanner(System.in);

	public static void main(String[] args) {

		//ler região
		Regiao reg = lerRegiao();
		
		//ler ponto
		Ponto pont = lerPonto();
		
		//verificar se o ponto está dentro da região
		boolean result = estaDentro(reg, pont);
		System.out.println("O ponto está dentro da região? " + result);
	}

	/**
	 * aloca o ponto, lê seus valores e retorna sua referência
	 * 
	 * @return
	 */
	public static Ponto lerPonto() {
		Ponto ponto = new Ponto();
		// System.out.println("Digite o valor de x: ");
		ponto.x = lerValorInteiro();
		// System.out.println("Digite o valor de y: ");
		ponto.y = lerValorInteiro();
		return ponto;
	}

	/**
	 * aloca um quadrado e seus pontos, lê os pontos do teclado e insere no retângulo
	 * 
	 */
	public static Retangulo lerQuadrado() {
		//System.out.println("Lendo quadrado...");
		Retangulo retangulo = new Retangulo();

		retangulo.pInicial = lerPonto();
		retangulo.pFinal = lerPonto();

		return retangulo;
	}

	/**
	 * aloca uma região
	 * 
	 * @return
	 */
	public static Regiao lerRegiao() {

		Regiao regiao = new Regiao();

		// primeiro lê a quantidade de quadrados
		regiao.quantidade = lerValorInteiro();
		//System.out.println("Quantidade: " + regiao.quantidade);
		regiao.retangulos = new Retangulo[regiao.quantidade];

		for (int i = 0; i < regiao.quantidade; i++) {
			//System.out.println("Lendo o quadrado " + i);
			regiao.retangulos[i] = lerQuadrado();
		}
		return regiao;
	}

	/**
	 * retorna true se o ponto está dentro do quadrado, caso contrário retorna
	 * false.
	 * 
	 * @param quadrado
	 * @param ponto
	 * @return
	 */
	public static boolean estaDentro(Retangulo quadrado, Ponto ponto) {

		// o ponto é maior/igual ao ponto inicial do quadrado
		return ponto.x >= quadrado.pInicial.x && ponto.y >= quadrado.pInicial.y &&
		// o ponto é menor/iqual ao ponto final do quadrado
				ponto.x <= quadrado.pFinal.x && ponto.y <= quadrado.pFinal.y;

	}

	/**
	 * retorna true se o ponto estiver dentro de algum quadrado da região, caso
	 * contrário retorna false.
	 * 
	 * @param regiao
	 * @param ponto
	 * @return
	 */
	public static boolean estaDentro(Regiao regiao, Ponto ponto) {

		// caso o ponto estiver dentro de pelo menos 1 quadrado,
		// então o ponto está dentro da região
		for (int i = 0; i < regiao.quantidade; i++) {
			boolean sim = estaDentro(regiao.retangulos[i], ponto);
			if (sim) {
				return true;
			}
		}
		return false;
	}

	public static int lerValorInteiro() {
		int value = leitor.nextInt();
		leitor.nextLine(); // Consume newline left-over
		return value;
	}

}

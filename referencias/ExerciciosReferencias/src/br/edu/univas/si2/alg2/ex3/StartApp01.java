package br.edu.univas.si2.alg2.ex3;

public class StartApp01 {

	public static void main(String[] args) {
		Ponto[] vetOrigem = new Ponto[3];
		Ponto[] vetDestino = new Ponto[3];

		Ponto p1 = new Ponto();
		Ponto p2 = new Ponto();
		Ponto p3 = new Ponto();
		vetOrigem[0] = p1;
		vetOrigem[1] = p2;
		vetOrigem[2] = p3;

		System.out.println("Vetor de origem:");
		imprimirVetor(vetOrigem);
		copiarInvertido(vetOrigem, vetDestino); // teste 1
		System.out.println("Vetor de destino:");
		imprimirVetor(vetDestino);

	}

	// por enquanto copia apenas as referências
	public static void copiarInvertido(Ponto vetorOrigem[], Ponto vetorDestino[]) {

		if (vetorOrigem == null) {
			System.out.println("O vetor de origem é null.");
			return;
		}
		if (vetorDestino == null) {
			System.out.println("O vetor de destino é null.");
			return;
		}

		if (vetorOrigem.length != vetorDestino.length) { // caso os vetores forem de tamanhos diferentes
			System.out.println("Os vetores possuem tamanhos diferentes.");
			return;
		}
		for (int i = 0, j = vetorOrigem.length - 1; i < vetorOrigem.length; i++, j--) {
			vetorDestino[i] = vetorOrigem[j];
		}

		// outra opção
//		for (int i = 0; i < vetorOrigem.length; i++) {
//			int j = vetorOrigem.length - i - 1;
//			vetorDestino[i] = vetorOrigem[j];
//		}

	}

	public static void imprimirVetor(Ponto[] vetor) {
		System.out.println(vetor);
		if (vetor != null) {
			for (int i = 0; i < vetor.length; i++) {
				System.out.println("vetor na posição " + i + ": " + vetor[i]);
			}
		}
	}
}

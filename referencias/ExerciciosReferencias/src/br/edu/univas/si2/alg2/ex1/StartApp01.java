package br.edu.univas.si2.alg2.ex1;

public class StartApp01 {

	public static void main(String[] args) {
		Ponto [] vetOrigem = new Ponto[4];
		Ponto [] vetDestino = new Ponto[3];
		
		Ponto p1 = new Ponto();
		Ponto p2 = new Ponto();
		Ponto p3 = new Ponto();
		vetOrigem[0] = p1;
		vetOrigem[1] = p2;
		vetOrigem[2] = p3;

		copiarVetor(vetOrigem, vetDestino); //teste 1
		imprimirVetor(vetDestino);
		
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
				System.out.println("vetor na posição " + i + ": " + vetor[i]);
			}
		}
	}
}

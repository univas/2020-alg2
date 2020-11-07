package br.edu.univas.si2.alg2.ex1;

public class StartApp01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

	
	//por enquanto copia apenas as referências
	public static void copiarVetor(Ponto vetorOrigem[], Ponto vetorDestino[]) {
		
		if(vetorOrigem == null) {
			return;
		}
		if(vetorDestino == null) {
			return;
		}
		
		int max = vetorOrigem.length;
		if(vetorDestino.length < max) { //caso os verores sere de tamanhos diferentes
			max = vetorDestino.length;
		}
		for (int i = 0; i < max; i++) {
			vetorDestino[i] = vetorOrigem[i];
		}
	}
}

package br.edu.univas.si2.alg2.ex02;

public class StartApp03 {

	public static void main(String[] args) {

		//Evento 1 - duração de 5 min
		HoraMinuto inicioEv1 = new HoraMinuto();
		HoraMinuto fimEv1 = new HoraMinuto();
		inicioEv1.hora = 0;
		inicioEv1.minuto = 10;
		fimEv1.hora = 0;
		fimEv1.minuto = 15;
		
		//Evento 2 - duração de 1h e 10min
		HoraMinuto inicioEv2 = new HoraMinuto();
		HoraMinuto fimEv2 = new HoraMinuto();
		inicioEv2.hora = 1;
		inicioEv2.minuto = 0;
		fimEv2.hora = 2;
		fimEv2.minuto = 10;
		
		//Evento 3 - duração de 50 min
		HoraMinuto inicioEv3 = new HoraMinuto();
		HoraMinuto fimEv3 = new HoraMinuto();
		inicioEv3.hora = 3;
		inicioEv3.minuto = 30;
		fimEv3.hora = 4;
		fimEv3.minuto = 20;
		
		
		//Evento 4 - 3h e 30 min
		HoraMinuto inicioEv4 = new HoraMinuto();
		HoraMinuto fimEv4 = new HoraMinuto();
		inicioEv4.hora = 22;
		inicioEv4.minuto = 0;
		fimEv4.hora = 1;
		fimEv4.minuto = 30;
		
		//Evento 5 - 2h  e 30 min
		HoraMinuto inicioEv5 = new HoraMinuto();
		HoraMinuto fimEv5 = new HoraMinuto();
		inicioEv5.hora = 23;
		inicioEv5.minuto = 50;
		fimEv5.hora = 2;
		fimEv5.minuto = 20;
		
		HoraMinuto duracaoEv1 = calcularDuracao(inicioEv1, fimEv1);
		imprimir(duracaoEv1, 1); //duração de 5 min
		
		imprimir(calcularDuracao(inicioEv2, fimEv2), 2); //duração de 1h e 10min
		imprimir(calcularDuracao(inicioEv3, fimEv3), 3); //duração de 50 min
		imprimir(calcularDuracao(inicioEv4, fimEv4), 4); //3h e 30 min
		imprimir(calcularDuracao(inicioEv5, fimEv5), 5); //2h  e 30 min

	}
	
	public static void imprimir(HoraMinuto duracaoEvento, int idDoEvento) {
		System.out.println("Duração do Evento " 
				+ idDoEvento + ": " 
				+ duracaoEvento.hora + " h " 
				+ duracaoEvento.minuto + " min");
	}

	public static HoraMinuto calcularDuracao(HoraMinuto inicio, HoraMinuto fim) {
		int duracaoDasHoras = fim.hora - inicio.hora;
		int duracaoDosMinutos = fim.minuto - inicio.minuto;
		
		if(duracaoDasHoras < 0) {
			duracaoDasHoras += 24;
		}
		//TODO: corrigir os bugs dos minutos negativos
		
		HoraMinuto resultadoDuracao = new HoraMinuto();
		resultadoDuracao.hora = duracaoDasHoras;
		resultadoDuracao.minuto = duracaoDosMinutos;
		
		return resultadoDuracao;
	}
}

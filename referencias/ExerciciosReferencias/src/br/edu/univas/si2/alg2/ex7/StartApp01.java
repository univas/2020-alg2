package br.edu.univas.si2.alg2.ex7;

import java.util.Scanner;

public class StartApp01 {

	public static Scanner leitor = new Scanner(System.in);
	
	public static void main(String[] args) {
		HoraMinuto inicioEvento = lerMomentoEvento();
		HoraMinuto fimEvento = lerMomentoEvento();
		
		int duracao = calcularDuracao(inicioEvento, fimEvento);
		System.out.println("Duração: " + duracao);
		
		imprimeEmHorasEMinutos(duracao);
	}
	
	public static void imprimeEmHorasEMinutos(int duracaoEmMinutos) {
		if(duracaoEmMinutos == -1) {
			System.out.println("Duração inválida.");
			return;
		}
		int horas = duracaoEmMinutos / 60;
		int minutos = duracaoEmMinutos % 60;
		
		System.out.println("Tempo do evento: " + horas + "h e " + minutos + "min");
	}

	public static HoraMinuto lerMomentoEvento() {
		HoraMinuto registro = new HoraMinuto();
		
		registro.hora = leitor.nextInt();
		registro.minuto = leitor.nextInt();
		
		return registro;
	}

	public static int calcularDuracao(HoraMinuto inicio, HoraMinuto fim) {

		if (inicio == null) {
			System.out.println("O início não pode ser null.");
			return -1;
		}
		if (fim == null) {
			System.out.println("O fim não pode ser null.");
			return -1;
		}

		if (inicio.hora > fim.hora) {
			System.out.println("O início está depois do fim.");
			return -1;
		} else if (inicio.hora == fim.hora && inicio.minuto > fim.minuto) {
			System.out.println("O início está depois do fim.");
			return -1;
		}

		return (fim.hora * 60 + fim.minuto) - (inicio.hora * 60 + inicio.minuto);
	}

}

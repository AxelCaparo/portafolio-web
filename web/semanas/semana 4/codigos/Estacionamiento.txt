package proyecto02;

import java.util.Scanner;

public class Estacionamiento {
    static Scanner scanner = new Scanner(System.in);
    static int diaSemana, horaEntrada, minutoEntrada, horaSalida, minutoSalida;
    static double montoPagar;

    // Método void sin parámetros - Lee los datos
    static void leerDatos() {
        System.out.println("--- Días de la Semana ---");
        System.out.println("1. Lunes");
        System.out.println("2. Martes");
        System.out.println("3. Miércoles");
        System.out.println("4. Jueves");
        System.out.println("5. Viernes");
        System.out.println("6. Sábado");
        System.out.println("7. Domingo");
        System.out.print("Seleccione el día (1-7): ");
        diaSemana = scanner.nextInt();
        
        System.out.print("Ingrese hora de entrada (0-23): ");
        horaEntrada = scanner.nextInt();
        System.out.print("Ingrese minuto de entrada (0-59): ");
        minutoEntrada = scanner.nextInt();
        
        System.out.print("Ingrese hora de salida (0-23): ");
        horaSalida = scanner.nextInt();
        System.out.print("Ingrese minuto de salida (0-59): ");
        minutoSalida = scanner.nextInt();
    }

    // Método con valor de retorno con parámetros - Calcula la tarifa
    static double calcularTarifa(int dia, int hEntrada, int mEntrada, int hSalida, int mSalida) {
        double tarifaHora = 0;
        int totalMinutos, horasEstacionado;
        
        // Sentencia selectiva switch para determinar tarifa según el día
        switch (dia) {
            case 1:
            case 2:
            case 3:
            case 4:
                tarifaHora = 3.5; // Lunes a Jueves
                break;
            case 5:
            case 6:
                tarifaHora = 4.5; // Viernes a Sábado
                break;
            case 7:
                tarifaHora = 2.5; // Domingo
                break;
            default:
                System.out.println("Día no válido");
                return 0;
        }
        
        // Calcular tiempo estacionado en minutos
        totalMinutos = (hSalida * 60 + mSalida) - (hEntrada * 60 + mEntrada);
        
        // Si la salida es al día siguiente
        if (totalMinutos < 0) {
            totalMinutos += 1440; // 24 horas * 60 minutos
        }
        
        // Calcular horas estacionado (redondeando hacia arriba - fracción)
        horasEstacionado = (totalMinutos + 59) / 60; // Redondeo hacia arriba
        
        return tarifaHora * horasEstacionado;
    }

    // Método void sin parámetros - Muestra el reporte
    static void mostrarReporte() {
        String nombreDia = "";
        
        // Sentencia selectiva switch para mostrar el día
        switch (diaSemana) {
            case 1: nombreDia = "Lunes"; break;
            case 2: nombreDia = "Martes"; break;
            case 3: nombreDia = "Miércoles"; break;
            case 4: nombreDia = "Jueves"; break;
            case 5: nombreDia = "Viernes"; break;
            case 6: nombreDia = "Sábado"; break;
            case 7: nombreDia = "Domingo"; break;
            default: nombreDia = "No válido";
        }
        
        System.out.println("");
        System.out.println("--- Reporte de Estacionamiento ---");
        System.out.println("---");
        System.out.println("Día               : " + nombreDia);
        System.out.println("Hora de entrada   : " + horaEntrada + ":" + String.format("%02d", minutoEntrada));
        System.out.println("Hora de salida    : " + horaSalida + ":" + String.format("%02d", minutoSalida));
        System.out.println("Monto a pagar     : S/. " + montoPagar);
        System.out.println("---");
    }

    public static void main(String[] args) {
        leerDatos();  // Llamada al método void sin parámetros
        montoPagar = calcularTarifa(diaSemana, horaEntrada, minutoEntrada, horaSalida, minutoSalida);
        mostrarReporte();  // Llamada al método void sin parámetros
        scanner.close();
    }
}
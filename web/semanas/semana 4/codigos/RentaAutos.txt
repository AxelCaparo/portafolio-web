package proyecto01;

import java.util.Scanner;

public class RentaAutos {
    static Scanner scanner = new Scanner(System.in);
    static int tipoAuto, dias;
    static double kmRecorridos, montoPagar;

    // Método void sin parámetros - Lee los datos
    static void leerDatos() {
        System.out.println("--- Tipos de Autos ---");
        System.out.println("1. Auto Pequeño  (S/.15/día + S/.0.20/km)");
        System.out.println("2. Auto Mediano  (S/.20/día + S/.0.30/km)");
        System.out.println("3. Auto Grande   (S/.30/día + S/.0.40/km)");
        System.out.print("Seleccione el tipo de auto (1-3): ");
        tipoAuto = scanner.nextInt();
        System.out.print("Ingrese la cantidad de días de alquiler: ");
        dias = scanner.nextInt();
        System.out.print("Ingrese los kilómetros recorridos: ");
        kmRecorridos = scanner.nextDouble();
    }

    // Método con valor de retorno con parámetros - Calcula el pago
    static double calcularPago(int tipo, int dias, double km) {
        double tarifaDia = 0, tarifaKm = 0, pagoBase = 0, pagoFinal = 0;
        
        // Sentencia selectiva switch para elegir el tipo de auto
        switch (tipo) {
            case 1:
                tarifaDia = 15;
                tarifaKm = 0.20;
                break;
            case 2:
                tarifaDia = 20;
                tarifaKm = 0.30;
                break;
            case 3:
                tarifaDia = 30;
                tarifaKm = 0.40;
                break;
            default:
                System.out.println("Tipo de auto no válido");
                return 0;
        }
        
        pagoBase = (tarifaDia * dias) + (tarifaKm * km);
        
        // Sentencia selectiva if para verificar si supera los 10 km/día
        if (km / dias > 10) {
            pagoFinal = pagoBase * 1.025; // Aumento del 2.5%
            System.out.println("*** Se aplicó recargo del 2.5% por exceder 10 km/día ***");
        } else {
            pagoFinal = pagoBase;
        }
        
        return pagoFinal;
    }

    // Método void sin parámetros - Muestra el reporte
    static void mostrarReporte() {
        String tipoAutoStr = "";
        
        // Sentencia selectiva switch para mostrar el tipo de auto
        switch (tipoAuto) {
            case 1:
                tipoAutoStr = "Pequeño";
                break;
            case 2:
                tipoAutoStr = "Mediano";
                break;
            case 3:
                tipoAutoStr = "Grande";
                break;
            default:
                tipoAutoStr = "No válido";
        }
        
        System.out.println("");
        System.out.println("--- Reporte de Alquiler ---");
        System.out.println("---");
        System.out.println("Tipo de auto       : " + tipoAutoStr);
        System.out.println("Días de alquiler   : " + dias);
        System.out.println("Km recorridos      : " + kmRecorridos);
        System.out.println("Km por día         : " + (kmRecorridos / dias));
        System.out.println("Monto a pagar      : S/. " + montoPagar);
        System.out.println("---");
    }

    public static void main(String[] args) {
        leerDatos();  // Llamada al método void sin parámetros
        montoPagar = calcularPago(tipoAuto, dias, kmRecorridos);  // Llamada con valor de retorno
        mostrarReporte();  // Llamada al método void sin parámetros
        scanner.close();
    }
}
package semanas.semana1.codigo;

import java.util.Scanner;

public class RepartoHijos {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double montoTotal, josue, daniel, tamar, caleb, david;

        System.out.print("Ingrese la cantidad total de dinero a repartir: ");
        montoTotal = scanner.nextDouble();

        josue = 0.27 * montoTotal;
        daniel = 0.25 * montoTotal;
        tamar = 0.85 * josue;
        caleb = 0.23 * (josue + daniel);
        david = montoTotal - (josue + daniel + tamar + caleb);

        System.out.println("");
        System.out.println("--- Reporte de Reparto ---");
        System.out.println("---");
        System.out.println("Monto Total : " + montoTotal);
        System.out.println("Josué       : " + josue);
        System.out.println("Daniel      : " + daniel);
        System.out.println("Tamar       : " + tamar);
        System.out.println("Caleb       : " + caleb);
        System.out.println("David       : " + david);
        System.out.println("---");

        scanner.close();
    }
}
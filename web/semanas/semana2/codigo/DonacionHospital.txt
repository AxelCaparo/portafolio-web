package proyecto03;

import java.util.Scanner;

public class DonacionHospital {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        double donacionTotal, medicinaGeneral, ginecologia, pediatria, traumatologia;

        System.out.print("Ingrese el monto total de la donación: ");
        donacionTotal = scanner.nextDouble();

        medicinaGeneral = 0.45 * donacionTotal;
        ginecologia = 0.80 * medicinaGeneral;
        pediatria = 0.20 * (medicinaGeneral + ginecologia);
        traumatologia = donacionTotal - (medicinaGeneral + ginecologia + pediatria);

        System.out.println("");
        System.out.println("--- Reporte de Donación ---");
        System.out.println("---");
        System.out.println("Donación total        : " + donacionTotal);
        System.out.println("Medicina General (45%): " + medicinaGeneral);
        System.out.println("Ginecología (80% de MG): " + ginecologia);
        System.out.println("Pediatría (20% MG+GN) : " + pediatria);
        System.out.println("Traumatología (Resto) : " + traumatologia);
        System.out.println("---");

        scanner.close();
    }
}
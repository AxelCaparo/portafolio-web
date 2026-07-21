package semana07;

import java.util.Scanner;

public class DistanciaEuclidiana {
    Scanner sc = new Scanner(System.in);
    
    // VOID SIN PARÁMETROS
    public void distanciaVoidSinParam() {
        System.out.print("x1: ");
        double x1 = sc.nextDouble();
        System.out.print("y1: ");
        double y1 = sc.nextDouble();
        System.out.print("x2: ");
        double x2 = sc.nextDouble();
        System.out.print("y2: ");
        double y2 = sc.nextDouble();
        double d = Math.hypot(x2 - x1, y2 - y1);
        System.out.printf("Distancia: %.4f\n", d);
    }
    
    // VOID CON PARÁMETROS
    public void distanciaVoidConParam(double x1, double y1, double x2, double y2) {
        double d = Math.hypot(x2 - x1, y2 - y1);
        System.out.printf("Distancia: %.4f\n", d);
    }
    
    // CON RETORNO SIN PARÁMETROS
    public double distanciaRetornoSinParam() {
        System.out.print("x1: ");
        double x1 = sc.nextDouble();
        System.out.print("y1: ");
        double y1 = sc.nextDouble();
        System.out.print("x2: ");
        double x2 = sc.nextDouble();
        System.out.print("y2: ");
        double y2 = sc.nextDouble();
        return Math.hypot(x2 - x1, y2 - y1);
    }
    
    // CON RETORNO CON PARÁMETROS
    public double distanciaRetornoConParam(double x1, double y1, double x2, double y2) {
        return Math.hypot(x2 - x1, y2 - y1);
    }
    
    public static void main(String[] args) {
        DistanciaEuclidiana obj = new DistanciaEuclidiana();
        
        System.out.println("--- VOID SIN PARÁMETROS ---");
        obj.distanciaVoidSinParam();
        
        System.out.println("\n--- VOID CON PARÁMETROS ---");
        System.out.print("x1: ");
        double x1 = obj.sc.nextDouble();
        System.out.print("y1: ");
        double y1 = obj.sc.nextDouble();
        System.out.print("x2: ");
        double x2 = obj.sc.nextDouble();
        System.out.print("y2: ");
        double y2 = obj.sc.nextDouble();
        obj.distanciaVoidConParam(x1, y1, x2, y2);
        
        System.out.println("\n--- RETORNO SIN PARÁMETROS ---");
        double d1 = obj.distanciaRetornoSinParam();
        System.out.println("Distancia: " + d1);
        
        System.out.println("\n--- RETORNO CON PARÁMETROS ---");
        System.out.print("x1: ");
        double x1b = obj.sc.nextDouble();
        System.out.print("y1: ");
        double y1b = obj.sc.nextDouble();
        System.out.print("x2: ");
        double x2b = obj.sc.nextDouble();
        System.out.print("y2: ");
        double y2b = obj.sc.nextDouble();
        double d2 = obj.distanciaRetornoConParam(x1b, y1b, x2b, y2b);
        System.out.println("Distancia: " + d2);
        
        obj.sc.close();
    }
}
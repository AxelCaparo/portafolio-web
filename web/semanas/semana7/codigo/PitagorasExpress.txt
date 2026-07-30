package semana07;

import java.util.Scanner;

public class PitagorasExpress {
    Scanner sc = new Scanner(System.in);
    
    // VOID SIN PARÁMETROS
    public void hipotenusaVoidSinParam() {
        System.out.print("Cateto A: ");
        double a = sc.nextDouble();
        System.out.print("Cateto B: ");
        double b = sc.nextDouble();
        double h = Math.hypot(a, b);
        System.out.printf("Hipotenusa: %.4f\n", h);
    }
    
    // VOID CON PARÁMETROS
    public void hipotenusaVoidConParam(double a, double b) {
        double h = Math.hypot(a, b);
        System.out.printf("Hipotenusa: %.4f\n", h);
    }
    
    // CON RETORNO SIN PARÁMETROS
    public double hipotenusaRetornoSinParam() {
        System.out.print("Cateto A: ");
        double a = sc.nextDouble();
        System.out.print("Cateto B: ");
        double b = sc.nextDouble();
        return Math.hypot(a, b);
    }
    
    // CON RETORNO CON PARÁMETROS
    public double hipotenusaRetornoConParam(double a, double b) {
        return Math.hypot(a, b);
    }
    
    public static void main(String[] args) {
        PitagorasExpress obj = new PitagorasExpress();
        
        System.out.println("--- VOID SIN PARÁMETROS ---");
        obj.hipotenusaVoidSinParam();
        
        System.out.println("\n--- VOID CON PARÁMETROS ---");
        System.out.print("Cateto A: ");
        double a = obj.sc.nextDouble();
        System.out.print("Cateto B: ");
        double b = obj.sc.nextDouble();
        obj.hipotenusaVoidConParam(a, b);
        
        System.out.println("\n--- RETORNO SIN PARÁMETROS ---");
        double h1 = obj.hipotenusaRetornoSinParam();
        System.out.println("Hipotenusa: " + h1);
        
        System.out.println("\n--- RETORNO CON PARÁMETROS ---");
        System.out.print("Cateto A: ");
        double a2 = obj.sc.nextDouble();
        System.out.print("Cateto B: ");
        double b2 = obj.sc.nextDouble();
        double h2 = obj.hipotenusaRetornoConParam(a2, b2);
        System.out.println("Hipotenusa: " + h2);
        
        obj.sc.close();
    }
}
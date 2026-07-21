package semana07;

import java.util.Scanner;

public class InteresContinuo {
    Scanner sc = new Scanner(System.in);
    
    // VOID SIN PARÁMETROS
    public void interesVoidSinParam() {
        System.out.print("Capital inicial (P): ");
        double p = sc.nextDouble();
        System.out.print("Tasa de interés (r): ");
        double r = sc.nextDouble();
        System.out.print("Tiempo en años (t): ");
        double t = sc.nextDouble();
        double A = p * Math.exp(r * t);
        System.out.printf("Monto final: %.2f\n", A);
    }
    
    // VOID CON PARÁMETROS
    public void interesVoidConParam(double p, double r, double t) {
        double A = p * Math.exp(r * t);
        System.out.printf("Monto final: %.2f\n", A);
    }
    
    // CON RETORNO SIN PARÁMETROS
    public double interesRetornoSinParam() {
        System.out.print("Capital inicial (P): ");
        double p = sc.nextDouble();
        System.out.print("Tasa de interés (r): ");
        double r = sc.nextDouble();
        System.out.print("Tiempo en años (t): ");
        double t = sc.nextDouble();
        return p * Math.exp(r * t);
    }
    
    // CON RETORNO CON PARÁMETROS
    public double interesRetornoConParam(double p, double r, double t) {
        return p * Math.exp(r * t);
    }
    
    public static void main(String[] args) {
        InteresContinuo obj = new InteresContinuo();
        
        System.out.println("--- VOID SIN PARÁMETROS ---");
        obj.interesVoidSinParam();
        
        System.out.println("\n--- VOID CON PARÁMETROS ---");
        System.out.print("Capital: ");
        double p = obj.sc.nextDouble();
        System.out.print("Tasa: ");
        double r = obj.sc.nextDouble();
        System.out.print("Tiempo: ");
        double t = obj.sc.nextDouble();
        obj.interesVoidConParam(p, r, t);
        
        System.out.println("\n--- RETORNO SIN PARÁMETROS ---");
        double m1 = obj.interesRetornoSinParam();
        System.out.println("Monto: " + m1);
        
        System.out.println("\n--- RETORNO CON PARÁMETROS ---");
        System.out.print("Capital: ");
        double p2 = obj.sc.nextDouble();
        System.out.print("Tasa: ");
        double r2 = obj.sc.nextDouble();
        System.out.print("Tiempo: ");
        double t2 = obj.sc.nextDouble();
        double m2 = obj.interesRetornoConParam(p2, r2, t2);
        System.out.println("Monto: " + m2);
        
        obj.sc.close();
    }
}
package semana07;

import java.util.Scanner;

public class RedondeadorFinanciero {
    Scanner sc = new Scanner(System.in);
    
    // VOID SIN PARÁMETROS
    public void redondearVoidSinParam() {
        System.out.print("Número a redondear: ");
        double valor = sc.nextDouble();
        double redondeado = Math.round(valor * 100.0) / 100.0;
        System.out.println("Redondeado a 2 decimales: " + redondeado);
    }
    
    // VOID CON PARÁMETROS
    public void redondearVoidConParam(double valor) {
        double redondeado = Math.round(valor * 100.0) / 100.0;
        System.out.println("Redondeado a 2 decimales: " + redondeado);
    }
    
    // CON RETORNO SIN PARÁMETROS
    public double redondearRetornoSinParam() {
        System.out.print("Número a redondear: ");
        double valor = sc.nextDouble();
        return Math.round(valor * 100.0) / 100.0;
    }
    
    // CON RETORNO CON PARÁMETROS
    public double redondearRetornoConParam(double valor) {
        return Math.round(valor * 100.0) / 100.0;
    }
    
    public static void main(String[] args) {
        RedondeadorFinanciero obj = new RedondeadorFinanciero();
        
        System.out.println("--- VOID SIN PARÁMETROS ---");
        obj.redondearVoidSinParam();
        
        System.out.println("\n--- VOID CON PARÁMETROS ---");
        System.out.print("Número: ");
        double n = obj.sc.nextDouble();
        obj.redondearVoidConParam(n);
        
        System.out.println("\n--- RETORNO SIN PARÁMETROS ---");
        double r1 = obj.redondearRetornoSinParam();
        System.out.println("Redondeado: " + r1);
        
        System.out.println("\n--- RETORNO CON PARÁMETROS ---");
        System.out.print("Número: ");
        double n2 = obj.sc.nextDouble();
        double r2 = obj.redondearRetornoConParam(n2);
        System.out.println("Redondeado: " + r2);
        
        obj.sc.close();
    }
}
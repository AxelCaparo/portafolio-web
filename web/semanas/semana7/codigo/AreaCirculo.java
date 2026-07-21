package semana07;

import java.util.Scanner;

public class AreaCirculo {
    Scanner sc = new Scanner(System.in);
    
    // VOID SIN PARÁMETROS
    public void calcularAreaVoidSinParam() {
        System.out.print("Ingrese el radio: ");
        double radio = sc.nextDouble();
        double area = Math.PI * Math.pow(radio, 2);
        System.out.printf("Área: %.4f\n", area);
    }
    
    // VOID CON PARÁMETROS
    public void calcularAreaVoidConParam(double radio) {
        double area = Math.PI * Math.pow(radio, 2);
        System.out.printf("Área: %.4f\n", area);
    }
    
    // CON RETORNO SIN PARÁMETROS
    public double calcularAreaRetornoSinParam() {
        System.out.print("Ingrese el radio: ");
        double radio = sc.nextDouble();
        return Math.PI * Math.pow(radio, 2);
    }
    
    // CON RETORNO CON PARÁMETROS
    public double calcularAreaRetornoConParam(double radio) {
        return Math.PI * Math.pow(radio, 2);
    }
    
    public static void main(String[] args) {
        AreaCirculo obj = new AreaCirculo();
        
        System.out.println("--- VOID SIN PARÁMETROS ---");
        obj.calcularAreaVoidSinParam();
        
        System.out.println("\n--- VOID CON PARÁMETROS ---");
        System.out.print("Ingrese radio: ");
        double r = obj.sc.nextDouble();
        obj.calcularAreaVoidConParam(r);
        
        System.out.println("\n--- RETORNO SIN PARÁMETROS ---");
        double area1 = obj.calcularAreaRetornoSinParam();
        System.out.println("Área: " + area1);
        
        System.out.println("\n--- RETORNO CON PARÁMETROS ---");
        System.out.print("Ingrese radio: ");
        double r2 = obj.sc.nextDouble();
        double area2 = obj.calcularAreaRetornoConParam(r2);
        System.out.println("Área: " + area2);
        
        obj.sc.close();
    }
}
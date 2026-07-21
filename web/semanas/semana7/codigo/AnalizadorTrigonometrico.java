package semana07;

import java.util.Scanner;

public class AnalizadorTrigonometrico {
    Scanner sc = new Scanner(System.in);
    
    // VOID SIN PARÁMETROS
    public void trigoVoidSinParam() {
        System.out.print("Ángulo en grados: ");
        double grados = sc.nextDouble();
        double rad = Math.toRadians(grados);
        System.out.printf("Seno: %.4f\n", Math.sin(rad));
        System.out.printf("Coseno: %.4f\n", Math.cos(rad));
        System.out.printf("Tangente: %.4f\n", Math.tan(rad));
    }
    
    // VOID CON PARÁMETROS
    public void trigoVoidConParam(double grados) {
        double rad = Math.toRadians(grados);
        System.out.printf("Seno: %.4f\n", Math.sin(rad));
        System.out.printf("Coseno: %.4f\n", Math.cos(rad));
        System.out.printf("Tangente: %.4f\n", Math.tan(rad));
    }
    
    // CON RETORNO SIN PARÁMETROS
    public double[] trigoRetornoSinParam() {
        System.out.print("Ángulo en grados: ");
        double grados = sc.nextDouble();
        double rad = Math.toRadians(grados);
        return new double[]{Math.sin(rad), Math.cos(rad), Math.tan(rad)};
    }
    
    // CON RETORNO CON PARÁMETROS
    public double[] trigoRetornoConParam(double grados) {
        double rad = Math.toRadians(grados);
        return new double[]{Math.sin(rad), Math.cos(rad), Math.tan(rad)};
    }
    
    public static void main(String[] args) {
        AnalizadorTrigonometrico obj = new AnalizadorTrigonometrico();
        
        System.out.println("--- VOID SIN PARÁMETROS ---");
        obj.trigoVoidSinParam();
        
        System.out.println("\n--- VOID CON PARÁMETROS ---");
        System.out.print("Grados: ");
        double g = obj.sc.nextDouble();
        obj.trigoVoidConParam(g);
        
        System.out.println("\n--- RETORNO SIN PARÁMETROS ---");
        double[] t1 = obj.trigoRetornoSinParam();
        System.out.printf("Seno: %.4f, Coseno: %.4f, Tangente: %.4f\n", t1[0], t1[1], t1[2]);
        
        System.out.println("\n--- RETORNO CON PARÁMETROS ---");
        System.out.print("Grados: ");
        double g2 = obj.sc.nextDouble();
        double[] t2 = obj.trigoRetornoConParam(g2);
        System.out.printf("Seno: %.4f, Coseno: %.4f, Tangente: %.4f\n", t2[0], t2[1], t2[2]);
        
        obj.sc.close();
    }
}
package semana07;

import java.util.Scanner;

public class EcuacionCuadratica {
    Scanner sc = new Scanner(System.in);
    
    // VOID SIN PARÁMETROS
    public void resolverVoidSinParam() {
        System.out.print("a: ");
        double a = sc.nextDouble();
        System.out.print("b: ");
        double b = sc.nextDouble();
        System.out.print("c: ");
        double c = sc.nextDouble();
        
        if (a == 0) {
            System.out.println("No es cuadrática");
            return;
        }
        double d = Math.pow(b, 2) - 4 * a * c;
        if (d < 0) {
            System.out.println("Raíces complejas");
        } else {
            double raiz = Math.sqrt(d);
            System.out.printf("x1: %.4f, x2: %.4f\n", (-b + raiz)/(2*a), (-b - raiz)/(2*a));
        }
    }
    
    // VOID CON PARÁMETROS
    public void resolverVoidConParam(double a, double b, double c) {
        if (a == 0) {
            System.out.println("No es cuadrática");
            return;
        }
        double d = Math.pow(b, 2) - 4 * a * c;
        if (d < 0) {
            System.out.println("Raíces complejas");
        } else {
            double raiz = Math.sqrt(d);
            System.out.printf("x1: %.4f, x2: %.4f\n", (-b + raiz)/(2*a), (-b - raiz)/(2*a));
        }
    }
    
    // CON RETORNO SIN PARÁMETROS
    public double[] resolverRetornoSinParam() {
        System.out.print("a: ");
        double a = sc.nextDouble();
        System.out.print("b: ");
        double b = sc.nextDouble();
        System.out.print("c: ");
        double c = sc.nextDouble();
        
        if (a == 0) return null;
        double d = Math.pow(b, 2) - 4 * a * c;
        if (d < 0) return null;
        
        double raiz = Math.sqrt(d);
        return new double[]{(-b + raiz)/(2*a), (-b - raiz)/(2*a)};
    }
    
    // CON RETORNO CON PARÁMETROS
    public double[] resolverRetornoConParam(double a, double b, double c) {
        if (a == 0) return null;
        double d = Math.pow(b, 2) - 4 * a * c;
        if (d < 0) return null;
        
        double raiz = Math.sqrt(d);
        return new double[]{(-b + raiz)/(2*a), (-b - raiz)/(2*a)};
    }
    
    public static void main(String[] args) {
        EcuacionCuadratica obj = new EcuacionCuadratica();
        
        System.out.println("--- VOID SIN PARÁMETROS ---");
        obj.resolverVoidSinParam();
        
        System.out.println("\n--- VOID CON PARÁMETROS ---");
        System.out.print("a: ");
        double a = obj.sc.nextDouble();
        System.out.print("b: ");
        double b = obj.sc.nextDouble();
        System.out.print("c: ");
        double c = obj.sc.nextDouble();
        obj.resolverVoidConParam(a, b, c);
        
        System.out.println("\n--- RETORNO SIN PARÁMETROS ---");
        double[] r1 = obj.resolverRetornoSinParam();
        if (r1 != null) System.out.printf("x1: %.4f, x2: %.4f\n", r1[0], r1[1]);
        else System.out.println("Sin raíces reales");
        
        System.out.println("\n--- RETORNO CON PARÁMETROS ---");
        System.out.print("a: ");
        double a2 = obj.sc.nextDouble();
        System.out.print("b: ");
        double b2 = obj.sc.nextDouble();
        System.out.print("c: ");
        double c2 = obj.sc.nextDouble();
        double[] r2 = obj.resolverRetornoConParam(a2, b2, c2);
        if (r2 != null) System.out.printf("x1: %.4f, x2: %.4f\n", r2[0], r2[1]);
        else System.out.println("Sin raíces reales");
        
        obj.sc.close();
    }
}
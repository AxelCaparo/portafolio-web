package semana07;

import java.util.Scanner;

public class ControlOverflow {
    Scanner sc = new Scanner(System.in);
    
    // VOID SIN PARÁMETROS
    public void overflowVoidSinParam() {
        System.out.print("Número base: ");
        int base = sc.nextInt();
        int resultado = 1;
        int exponente = 0;
        
        while (true) {
            try {
                System.out.println(base + "^" + exponente + " = " + resultado);
                resultado = Math.multiplyExact(resultado, base);
                exponente++;
            } catch (ArithmeticException e) {
                System.out.println("¡DESBORDAMIENTO! Llegó a " + base + "^" + exponente);
                break;
            }
        }
    }
    
    // VOID CON PARÁMETROS
    public void overflowVoidConParam(int base) {
        int resultado = 1;
        int exponente = 0;
        
        while (true) {
            try {
                System.out.println(base + "^" + exponente + " = " + resultado);
                resultado = Math.multiplyExact(resultado, base);
                exponente++;
            } catch (ArithmeticException e) {
                System.out.println("¡DESBORDAMIENTO! Llegó a " + base + "^" + exponente);
                break;
            }
        }
    }
    
    // CON RETORNO SIN PARÁMETROS
    public int overflowRetornoSinParam() {
        System.out.print("Número base: ");
        int base = sc.nextInt();
        int resultado = 1;
        int exponente = 0;
        
        while (true) {
            try {
                resultado = Math.multiplyExact(resultado, base);
                exponente++;
            } catch (ArithmeticException e) {
                return exponente;
            }
        }
    }
    
    // CON RETORNO CON PARÁMETROS
    public int overflowRetornoConParam(int base) {
        int resultado = 1;
        int exponente = 0;
        
        while (true) {
            try {
                resultado = Math.multiplyExact(resultado, base);
                exponente++;
            } catch (ArithmeticException e) {
                return exponente;
            }
        }
    }
    
    public static void main(String[] args) {
        ControlOverflow obj = new ControlOverflow();
        
        System.out.println("--- VOID SIN PARÁMETROS ---");
        obj.overflowVoidSinParam();
        
        System.out.println("\n--- VOID CON PARÁMETROS ---");
        System.out.print("Base: ");
        int b = obj.sc.nextInt();
        obj.overflowVoidConParam(b);
        
        System.out.println("\n--- RETORNO SIN PARÁMETROS ---");
        int exp1 = obj.overflowRetornoSinParam();
        System.out.println("Máximo exponente alcanzado: " + exp1);
        
        System.out.println("\n--- RETORNO CON PARÁMETROS ---");
        System.out.print("Base: ");
        int b2 = obj.sc.nextInt();
        int exp2 = obj.overflowRetornoConParam(b2);
        System.out.println("Máximo exponente alcanzado: " + exp2);
        
        obj.sc.close();
    }
}
package semana07;

import java.util.Scanner;

public class DadosRPG {
    Scanner sc = new Scanner(System.in);
    
    // VOID SIN PARÁMETROS
    public void lanzarDadoVoidSinParam() {
        System.out.print("Número de caras: ");
        int caras = sc.nextInt();
        int resultado = (int)(Math.random() * caras) + 1;
        System.out.println("Resultado: " + resultado);
    }
    
    // VOID CON PARÁMETROS
    public void lanzarDadoVoidConParam(int caras) {
        int resultado = (int)(Math.random() * caras) + 1;
        System.out.println("Resultado: " + resultado);
    }
    
    // CON RETORNO SIN PARÁMETROS
    public int lanzarDadoRetornoSinParam() {
        System.out.print("Número de caras: ");
        int caras = sc.nextInt();
        return (int)(Math.random() * caras) + 1;
    }
    
    // CON RETORNO CON PARÁMETROS
    public int lanzarDadoRetornoConParam(int caras) {
        return (int)(Math.random() * caras) + 1;
    }
    
    public static void main(String[] args) {
        DadosRPG obj = new DadosRPG();
        
        System.out.println("--- VOID SIN PARÁMETROS ---");
        obj.lanzarDadoVoidSinParam();
        
        System.out.println("\n--- VOID CON PARÁMETROS ---");
        System.out.print("Caras del dado: ");
        int c = obj.sc.nextInt();
        obj.lanzarDadoVoidConParam(c);
        
        System.out.println("\n--- RETORNO SIN PARÁMETROS ---");
        int r1 = obj.lanzarDadoRetornoSinParam();
        System.out.println("Resultado: " + r1);
        
        System.out.println("\n--- RETORNO CON PARÁMETROS ---");
        System.out.print("Caras del dado: ");
        int c2 = obj.sc.nextInt();
        int r2 = obj.lanzarDadoRetornoConParam(c2);
        System.out.println("Resultado: " + r2);
        
        obj.sc.close();
    }
}
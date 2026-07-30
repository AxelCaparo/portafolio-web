package semana06.actividad;

import java.util.Random;

public class Proyecto06 {
    public static void main(String[] args) {
        final int TOTAL_PRODUCTOS = 100;
        int[] stock = new int[TOTAL_PRODUCTOS];
        Random random = new Random();
        
        // Generar stock aleatorio
        for (int i = 0; i < TOTAL_PRODUCTOS; i++) {
            stock[i] = random.nextInt(201); // 0 a 200
        }
        
        // Contadores
        int menor50 = 0;
        int entre50y100 = 0;
        int entre100y150 = 0;
        int mayor150 = 0;
        
        // Contar según rangos
        for (int s : stock) {
            if (s < 50) {
                menor50++;
            } else if (s >= 50 && s < 100) {
                entre50y100++;
            } else if (s >= 100 && s < 150) {
                entre100y150++;
            } else {
                mayor150++;
            }
        }
        
        // Mostrar resultados
        System.out.println("=== ANÁLISIS DE STOCK ===");
        System.out.println("Stock generado (primeros 20):");
        for (int i = 0; i < 20; i++) {
            System.out.print(stock[i] + " ");
        }
        System.out.println("\n...\n");
        
        System.out.println("Resultados:");
        System.out.println("a. Productos con stock < 50: " + menor50);
        System.out.println("b. Productos con stock >= 50 pero < 100: " + entre50y100);
        System.out.println("c. Productos con stock >= 100 pero < 150: " + entre100y150);
        System.out.println("d. Productos con stock >= 150: " + mayor150);
    }
}
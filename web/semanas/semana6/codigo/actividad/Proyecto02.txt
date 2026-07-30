package semana06.actividad;

public class Proyecto02 {
    public static void main(String[] args) {
        ejecutarSerieFraccionaria(5); // Ejemplo con 5 términos
    }

    public static void ejecutarSerieFraccionaria(int n) {
        double suma = 0;
        int num = 2, den = 5;
        for (int i = 0; i < n; i++) {
            System.out.print(num + "/" + den + (i == n - 1 ? "" : " + "));
            suma += (double) num / den;
            num += 3;
            den += 4;
        }
        System.out.println("\nSuma total: " + suma);
    }
}
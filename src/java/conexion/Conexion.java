package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexion {
    // ⚠️ CAMBIA EL PUERTO según tu XAMPP
    // Si tu XAMPP usa puerto 3306, 3307 o 3308
    private static final String URL = "jdbc:mysql://localhost:3308/portafolio_db";
    private static final String USUARIO = "root";
    private static final String PASSWORD = "";  // Vacío en XAMPP por defecto
    
    public static Connection getConnection() throws SQLException {
        Connection conn = null;
        try {
            // Cargar el driver MySQL
            Class.forName("com.mysql.cj.jdbc.Driver");
            
            // Establecer conexión
            conn = DriverManager.getConnection(URL, USUARIO, PASSWORD);
            System.out.println("✅ Conexión exitosa a la base de datos");
            
        } catch (ClassNotFoundException e) {
            System.err.println("❌ Error: Driver MySQL no encontrado");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("❌ Error al conectar: " + e.getMessage());
            throw e;
        }
        return conn;
    }
    
    // Método de prueba
    public static void main(String[] args) {
        try {
            System.out.println("Intentando conectar...");
            Connection conn = getConnection();
            
            if (conn != null) {
                System.out.println("¡Conexión exitosa!");
                System.out.println("Base de datos conectada correctamente");
                conn.close();
            }
        } catch (SQLException e) {
            System.err.println("❌ Error: " + e.getMessage());
            e.printStackTrace();
        }
    }
}
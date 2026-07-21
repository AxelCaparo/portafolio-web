<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Semana 8 - Bases de Datos | Axel Caparo</title>
    
    <!-- Bootstrap 5.3 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Fuentes -->
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700;900&family=Rajdhani:wght@300;400;500;600;700&family=Fira+Code:wght@400;500;600&display=swap" rel="stylesheet">
    <!-- CSS Personalizado -->
    <link rel="stylesheet" href="../css/estilo.css">
    
    <style>
        :root {
            --neon-db-blue: #0066cc;
            --neon-db-cyan: #00ccff;
            --neon-db-dark: #003366;
            --dark-bg: #0a0a0f;
            --card-bg: #1a1a2e;
        }
        
        * {
            cursor: none !important;
        }
        
        body {
            font-family: 'Rajdhani', sans-serif;
            background: var(--dark-bg);
            color: #fff;
            overflow-x: hidden;
        }
        
        /* CURSOR PERSONALIZADO */
        .custom-cursor {
            position: fixed;
            width: 20px;
            height: 20px;
            border: 2px solid var(--neon-db-cyan);
            border-radius: 50%;
            pointer-events: none;
            z-index: 99999;
            transition: transform 0.1s ease;
            box-shadow: 0 0 10px var(--neon-db-cyan), 0 0 20px var(--neon-db-cyan);
        }
        
        .custom-cursor-dot {
            position: fixed;
            width: 6px;
            height: 6px;
            background: var(--neon-db-blue);
            border-radius: 50%;
            pointer-events: none;
            z-index: 99999;
            box-shadow: 0 0 10px var(--neon-db-blue);
        }
        
        /* HERO SEMANA */
        .hero-semana {
            min-height: 60vh;
            background: linear-gradient(135deg, #0a0a0f 0%, #0a1a2e 50%, #003366 100%);
            position: relative;
            overflow: hidden;
            display: flex;
            align-items: center;
        }
        
        .hero-semana::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: 
                radial-gradient(circle at 20% 30%, rgba(0, 102, 204, 0.3) 0%, transparent 40%),
                radial-gradient(circle at 80% 70%, rgba(0, 204, 255, 0.3) 0%, transparent 40%);
            animation: heroGlow 8s ease-in-out infinite;
        }
        
        @keyframes heroGlow {
            0%, 100% { opacity: 0.5; transform: scale(1); }
            50% { opacity: 1; transform: scale(1.1); }
        }
        
        .semana-title {
            font-family: 'Orbitron', sans-serif;
            font-size: 4rem;
            font-weight: 900;
            background: linear-gradient(45deg, #0066cc, #00ccff, #003366);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-transform: uppercase;
            letter-spacing: 5px;
            text-shadow: 0 0 30px rgba(0, 102, 204, 0.5);
            animation: gradientShift 5s ease infinite;
        }
        
        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
        
        .semana-badge {
            display: inline-block;
            padding: 10px 30px;
            background: linear-gradient(45deg, #0066cc, #00ccff);
            border-radius: 50px;
            font-family: 'Orbitron', sans-serif;
            font-size: 1.2rem;
            font-weight: 700;
            color: #fff;
            margin-bottom: 20px;
            box-shadow: 0 0 30px rgba(0, 102, 204, 0.5);
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }
        
        /* TARJETAS DE PROGRAMAS */
        .programa-card {
            background: var(--card-bg);
            border: 2px solid rgba(0, 102, 204, 0.3);
            border-radius: 15px;
            padding: 30px;
            margin-bottom: 30px;
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
        }
        
        .programa-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: linear-gradient(90deg, #0066cc, #00ccff, #003366);
        }
        
        .programa-card:hover {
            transform: translateY(-10px);
            border-color: var(--neon-db-cyan);
            box-shadow: 0 10px 40px rgba(0, 102, 204, 0.4);
        }
        
        .programa-title {
            font-family: 'Orbitron', sans-serif;
            font-size: 1.8rem;
            color: var(--neon-db-cyan);
            margin-bottom: 15px;
            text-shadow: 0 0 10px rgba(0, 204, 255, 0.5);
        }
        
        .programa-description {
            font-size: 1.1rem;
            color: #aaa;
            margin-bottom: 20px;
            line-height: 1.6;
        }
        
        .programa-features {
            list-style: none;
            padding: 0;
            margin-bottom: 20px;
        }
        
        .programa-features li {
            padding: 8px 0;
            color: #fff;
            font-size: 1rem;
        }
        
        .programa-features li::before {
            content: '▹';
            color: var(--neon-db-cyan);
            font-weight: bold;
            display: inline-block;
            width: 1.5em;
            margin-left: -1.5em;
        }
        
        /* BOTONES DE ACCIÓN */
        .btn-download {
            background: linear-gradient(45deg, #39ff14, #00f3ff);
            border: none;
            color: #000;
            font-family: 'Orbitron', sans-serif;
            font-weight: 700;
            padding: 12px 30px;
            border-radius: 50px;
            text-decoration: none;
            display: inline-block;
            margin-right: 10px;
            margin-bottom: 10px;
            transition: all 0.3s ease;
            box-shadow: 0 0 20px rgba(57, 255, 20, 0.5);
        }
        
        .btn-download:hover {
            transform: translateY(-3px);
            box-shadow: 0 0 30px rgba(57, 255, 20, 0.8);
            color: #000;
        }
        
        .btn-code {
            background: transparent;
            border: 2px solid var(--neon-db-blue);
            color: var(--neon-db-blue);
            font-family: 'Orbitron', sans-serif;
            font-weight: 700;
            padding: 10px 28px;
            border-radius: 50px;
            text-decoration: none;
            display: inline-block;
            margin-bottom: 10px;
            transition: all 0.3s ease;
        }
        
        .btn-code:hover {
            background: var(--neon-db-blue);
            color: #fff;
            box-shadow: 0 0 20px rgba(0, 102, 204, 0.5);
            transform: translateY(-3px);
        }
        
        /* CÓDIGO FUENTE */
        .code-container {
            background: #0d1117;
            border: 2px solid rgba(0, 102, 204, 0.3);
            border-radius: 10px;
            padding: 20px;
            margin-top: 20px;
            overflow-x: auto;
            position: relative;
        }
        
        .code-container::before {
            content: 'JAVA';
            position: absolute;
            top: 10px;
            right: 15px;
            background: linear-gradient(45deg, #0066cc, #00ccff);
            padding: 5px 15px;
            border-radius: 20px;
            font-family: 'Orbitron', sans-serif;
            font-size: 0.8rem;
            font-weight: 700;
            color: #fff;
        }
        
        .code-container pre {
            margin: 0;
            font-family: 'Fira Code', monospace;
            font-size: 0.9rem;
            line-height: 1.6;
            color: #e6edf3;
        }
        
        /* RESUMEN SEMANA */
        .resumen-box {
            background: linear-gradient(135deg, rgba(0, 102, 204, 0.1), rgba(0, 204, 255, 0.1));
            border: 2px solid rgba(0, 102, 204, 0.3);
            border-radius: 15px;
            padding: 30px;
            margin-bottom: 40px;
        }
        
        .resumen-title {
            font-family: 'Orbitron', sans-serif;
            color: var(--neon-db-cyan);
            font-size: 1.5rem;
            margin-bottom: 15px;
            text-shadow: 0 0 10px rgba(0, 204, 255, 0.5);
        }
        
        /* NAVIGATION */
        .nav-semanas {
            background: rgba(10, 10, 15, 0.95);
            backdrop-filter: blur(10px);
            border-bottom: 2px solid var(--neon-db-cyan);
            padding: 15px 0;
        }
        
        .nav-link {
            color: #fff !important;
            font-family: 'Orbitron', sans-serif;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 1px;
            transition: all 0.3s ease;
        }
        
        .nav-link:hover {
            color: var(--neon-db-cyan) !important;
            text-shadow: 0 0 10px var(--neon-db-cyan);
        }
        
        /* WHATSAPP */
        .whatsapp-btn {
            position: fixed;
            bottom: 30px;
            right: 30px;
            width: 60px;
            height: 60px;
            background: linear-gradient(45deg, #25d366, #128c7e);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            font-size: 2rem;
            text-decoration: none;
            box-shadow: 0 0 20px rgba(37, 211, 102, 0.5);
            transition: all 0.3s ease;
            z-index: 1000;
            animation: pulse 2s infinite;
        }
        
        .whatsapp-btn:hover {
            transform: scale(1.2);
            box-shadow: 0 0 40px rgba(37, 211, 102, 0.8);
        }
        
        /* FOOTER */
        .footer-section {
            background: rgba(10, 10, 15, 0.95);
            border-top: 2px solid var(--neon-db-cyan);
            padding: 40px 0 20px;
        }
        
        /* SCROLLBAR */
        ::-webkit-scrollbar {
            width: 10px;
        }
        
        ::-webkit-scrollbar-track {
            background: #0a0a0f;
        }
        
        ::-webkit-scrollbar-thumb {
            background: linear-gradient(var(--neon-db-blue), var(--neon-db-cyan));
            border-radius: 5px;
        }
        
        /* RESPONSIVE */
        @media (max-width: 768px) {
            .semana-title {
                font-size: 2.5rem;
            }
            
            .programa-title {
                font-size: 1.4rem;
            }
        }
    </style>
</head>
<body>

    <!-- CURSOR PERSONALIZADO -->
    <div class="custom-cursor" id="cursor"></div>
    <div class="custom-cursor-dot" id="cursor-dot"></div>

    <!-- NAVBAR -->
    <nav class="navbar navbar-expand-lg nav-semanas">
        <div class="container">
            <a class="navbar-brand fw-bold" href="../index.jsp" style="color: var(--neon-db-cyan); font-family: 'Orbitron', sans-serif; text-shadow: 0 0 10px var(--neon-db-cyan);">
                <i class="fas fa-code"></i> Axel Caparo
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="../index.jsp">Inicio</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle active" href="#" role="button" data-bs-toggle="dropdown">
                            Semanas
                        </a>
                        <ul class="dropdown-menu">
                            <li><a class="dropdown-item" href="semana1.jsp"><i class="fas fa-gamepad me-2"></i>Semana 1</a></li>
                            <li><a class="dropdown-item" href="semana2.jsp"><i class="fas fa-gamepad me-2"></i>Semana 2</a></li>
                            <li><a class="dropdown-item" href="semana3.jsp"><i class="fas fa-gamepad me-2"></i>Semana 3</a></li>
                            <li><a class="dropdown-item" href="semana4.jsp"><i class="fas fa-gamepad me-2"></i>Semana 4</a></li>
                            <li><a class="dropdown-item" href="semana5.jsp"><i class="fas fa-gamepad me-2"></i>Semana 5</a></li>
                            <li><a class="dropdown-item" href="semana6.jsp"><i class="fas fa-gamepad me-2"></i>Semana 6</a></li>
                            <li><a class="dropdown-item" href="semana7.jsp"><i class="fas fa-gamepad me-2"></i>Semana 7</a></li>
                            <li><a class="dropdown-item" href="semana8.jsp"><i class="fas fa-gamepad me-2"></i>Semana 8</a></li>
                            <li><a class="dropdown-item" href="semana9.jsp"><i class="fas fa-gamepad me-2"></i>Semana 9</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../index.jsp#contacto">Contacto</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- HERO SEMANA 8 -->
    <section class="hero-semana">
        <div class="container text-center">
            <div class="semana-badge">
                <i class="fas fa-database me-2"></i> SEMANA 8
            </div>
            <h1 class="semana-title mb-4">Bases de Datos</h1>
            <p class="lead mb-4" style="font-size: 1.5rem; color: #aaa;">
                <i class="fas fa-server me-2"></i> Conexión JDBC y Operaciones CRUD
            </p>
            <div class="mt-4">
                <a href="#programas" class="btn btn-primary btn-lg rounded-pill px-5 py-3 me-3" style="background: linear-gradient(45deg, #0066cc, #00ccff); border: none;">
                    <i class="fas fa-code me-2"></i> Ver Programas
                </a>
                <a href="../semana8/codigo/" class="btn btn-outline-light btn-lg rounded-pill px-5 py-3" download>
                    <i class="fas fa-download me-2"></i> Descargar Todo
                </a>
            </div>
        </div>
    </section>

    <!-- RESUMEN DE LA SEMANA -->
    <section class="py-5">
        <div class="container">
            <div class="resumen-box">
                <h3 class="resumen-title">
                    <i class="fas fa-info-circle me-2"></i>Resumen de la Semana
                </h3>
                <p style="font-size: 1.1rem; color: #ccc; line-height: 1.8;">
                    En esta octava semana, aprendimos a conectar Java con <strong style="color: #0066cc;">bases de datos MySQL</strong> 
                    usando <strong style="color: #00ccff;">JDBC (Java Database Connectivity)</strong>. Implementamos las operaciones 
                    <strong style="color: #003366;">CRUD</strong> (Create, Read, Update, Delete) para gestionar datos de forma persistente. 
                    Creamos una clase de conexión reutilizable y desarrollamos programas para insertar, consultar, actualizar y eliminar registros.
                </p>
                <div class="row mt-4">
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #0066cc; font-family: 'Orbitron', sans-serif;">6</div>
                        <p class="text-muted">Programas</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #00ccff; font-family: 'Orbitron', sans-serif;">100%</div>
                        <p class="text-muted">Completado</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #003366; font-family: 'Orbitron', sans-serif;">Avanz</div>
                        <p class="text-muted">Nivel</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #39ff14; font-family: 'Orbitron', sans-serif;">CRUD</div>
                        <p class="text-muted">Enfoque</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- PROGRAMAS -->
    <section id="programas" class="py-5">
        <div class="container">
            <h2 class="text-center fw-bold mb-5" style="font-family: 'Orbitron', sans-serif; color: #00ccff; text-shadow: 0 0 20px #00ccff;">
                <i class="fas fa-code me-2"></i>Programas Desarrollados
            </h2>

            <!-- PROGRAMA 1: CLASE CONEXIÓN -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-plug me-2"></i>ConexionDB.java
                </h3>
                <p class="programa-description">
                    Clase reutilizable para establecer conexión con la base de datos MySQL usando JDBC.
                </p>
                <ul class="programa-features">
                    <li>Driver MySQL: com.mysql.cj.jdbc.Driver</li>
                    <li>URL de conexión: jdbc:mysql://localhost:3306/</li>
                    <li>Método getConnection() estático</li>
                    <li>Manejo de excepciones SQLException</li>
                    <li>Cierre automático de conexión</li>
                </ul>
                <div>
                    <a href="../semana8/codigo/ConexionDB.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code1')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code1" class="code-container" style="display: none;">
                    <pre><code>import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {
    private static final String URL = "jdbc:mysql://localhost:3306/portafolio_db";
    private static final String USUARIO = "root";
    private static final String PASSWORD = "";
    
    public static Connection getConnection() throws SQLException {
        Connection conn = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USUARIO, PASSWORD);
            System.out.println("✓ Conexión exitosa a la base de datos");
        } catch (ClassNotFoundException e) {
            System.err.println("✗ Error: Driver MySQL no encontrado");
            e.printStackTrace();
        } catch (SQLException e) {
            System.err.println("✗ Error al conectar: " + e.getMessage());
            throw e;
        }
        return conn;
    }
    
    public static void main(String[] args) {
        try {
            Connection conn = getConnection();
            if (conn != null) {
                System.out.println("¡Conexión establecida correctamente!");
                conn.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 2: INSERTAR DATOS -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-plus-circle me-2"></i>InsertarDatos.java
                </h3>
                <p class="programa-description">
                    Programa para insertar registros en la tabla de estudiantes usando PreparedStatement.
                </p>
                <ul class="programa-features">
                    <li>INSERT INTO con PreparedStatement</li>
                    <li>Prevención de SQL Injection</li>
                    <li>Entrada de datos por consola</li>
                    <li>Confirmación de inserción</li>
                    <li>Manejo de excepciones</li>
                </ul>
                <div>
                    <a href="../semana8/codigo/InsertarDatos.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code2')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code2" class="code-container" style="display: none;">
                    <pre><code>import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Scanner;

public class InsertarDatos {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== INSERTAR ESTUDIANTE ===");
        System.out.print("Nombre: ");
        String nombre = scanner.nextLine();
        
        System.out.print("Edad: ");
        int edad = scanner.nextInt();
        scanner.nextLine();
        
        System.out.print("Carrera: ");
        String carrera = scanner.nextLine();
        
        System.out.print("Promedio: ");
        double promedio = scanner.nextDouble();
        
        String sql = "INSERT INTO estudiantes (nombre, edad, carrera, promedio) VALUES (?, ?, ?, ?)";
        
        try (Connection conn = ConexionDB.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setString(1, nombre);
            ps.setInt(2, edad);
            ps.setString(3, carrera);
            ps.setDouble(4, promedio);
            
            int filas = ps.executeUpdate();
            
            if (filas > 0) {
                System.out.println("✓ Estudiante insertado exitosamente");
            } else {
                System.out.println("✗ Error al insertar");
            }
            
        } catch (SQLException e) {
            System.err.println("Error: " + e.getMessage());
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 3: CONSULTAR DATOS -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-search me-2"></i>ConsultarDatos.java
                </h3>
                <p class="programa-description">
                    Programa para consultar y mostrar todos los registros de la tabla estudiantes.
                </p>
                <ul class="programa-features">
                    <li>SELECT * FROM con ResultSet</li>
                    <li>Recorrido de resultados con while</li>
                    <li>Formato de salida tabular</li>
                    <li>Contador de registros</li>
                    <li>Cierre de recursos automático</li>
                </ul>
                <div>
                    <a href="../semana8/codigo/ConsultarDatos.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code3')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code3" class="code-container" style="display: none;">
                    <pre><code>import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class ConsultarDatos {
    public static void main(String[] args) {
        String sql = "SELECT * FROM estudiantes ORDER BY id";
        
        try (Connection conn = ConexionDB.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            
            System.out.println("=== LISTA DE ESTUDIANTES ===");
            System.out.println("ID | Nombre | Edad | Carrera | Promedio");
            System.out.println("------------------------------------------------");
            
            int contador = 0;
            while (rs.next()) {
                int id = rs.getInt("id");
                String nombre = rs.getString("nombre");
                int edad = rs.getInt("edad");
                String carrera = rs.getString("carrera");
                double promedio = rs.getDouble("promedio");
                
                System.out.printf("%d | %s | %d | %s | %.2f\n", 
                    id, nombre, edad, carrera, promedio);
                contador++;
            }
            
            System.out.println("------------------------------------------------");
            System.out.println("Total de registros: " + contador);
            
        } catch (SQLException e) {
            System.err.println("Error: " + e.getMessage());
        }
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 4: ACTUALIZAR DATOS -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-edit me-2"></i>ActualizarDatos.java
                </h3>
                <p class="programa-description">
                    Programa para actualizar registros existentes en la tabla estudiantes.
                </p>
                <ul class="programa-features">
                    <li>UPDATE con WHERE clause</li>
                    <li>Búsqueda por ID</li>
                    <li>Actualización de múltiples campos</li>
                    <li>Verificación de existencia</li>
                    <li>Confirmación de cambios</li>
                </ul>
                <div>
                    <a href="../semana8/codigo/ActualizarDatos.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code4')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code4" class="code-container" style="display: none;">
                    <pre><code>import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class ActualizarDatos {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== ACTUALIZAR ESTUDIANTE ===");
        System.out.print("Ingrese ID del estudiante: ");
        int id = scanner.nextInt();
        scanner.nextLine();
        
        // Verificar si existe
        String checkSql = "SELECT * FROM estudiantes WHERE id = ?";
        
        try (Connection conn = ConexionDB.getConnection();
             PreparedStatement checkPs = conn.prepareStatement(checkSql)) {
            
            checkPs.setInt(1, id);
            ResultSet rs = checkPs.executeQuery();
            
            if (rs.next()) {
                System.out.println("Estudiante encontrado: " + rs.getString("nombre"));
                
                System.out.print("Nuevo nombre: ");
                String nombre = scanner.nextLine();
                
                System.out.print("Nueva edad: ");
                int edad = scanner.nextInt();
                scanner.nextLine();
                
                System.out.print("Nueva carrera: ");
                String carrera = scanner.nextLine();
                
                System.out.print("Nuevo promedio: ");
                double promedio = scanner.nextDouble();
                
                String updateSql = "UPDATE estudiantes SET nombre=?, edad=?, carrera=?, promedio=? WHERE id=?";
                
                try (PreparedStatement updatePs = conn.prepareStatement(updateSql)) {
                    updatePs.setString(1, nombre);
                    updatePs.setInt(2, edad);
                    updatePs.setString(3, carrera);
                    updatePs.setDouble(4, promedio);
                    updatePs.setInt(5, id);
                    
                    int filas = updatePs.executeUpdate();
                    
                    if (filas > 0) {
                        System.out.println("✓ Estudiante actualizado exitosamente");
                    } else {
                        System.out.println("✗ Error al actualizar");
                    }
                }
            } else {
                System.out.println("✗ Estudiante no encontrado");
            }
            
        } catch (SQLException e) {
            System.err.println("Error: " + e.getMessage());
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 5: ELIMINAR DATOS -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-trash-alt me-2"></i>EliminarDatos.java
                </h3>
                <p class="programa-description">
                    Programa para eliminar registros de la tabla estudiantes con confirmación.
                </p>
                <ul class="programa-features">
                    <li>DELETE FROM con WHERE clause</li>
                    <li>Confirmación antes de eliminar</li>
                    <li>Verificación de existencia</li>
                    <li>Prevención de errores</li>
                    <li>Mensaje de éxito o error</li>
                </ul>
                <div>
                    <a href="../semana8/codigo/EliminarDatos.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code5')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code5" class="code-container" style="display: none;">
                    <pre><code>import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Scanner;

public class EliminarDatos {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== ELIMINAR ESTUDIANTE ===");
        System.out.print("Ingrese ID del estudiante a eliminar: ");
        int id = scanner.nextInt();
        
        String checkSql = "SELECT nombre FROM estudiantes WHERE id = ?";
        
        try (Connection conn = ConexionDB.getConnection();
             PreparedStatement checkPs = conn.prepareStatement(checkSql)) {
            
            checkPs.setInt(1, id);
            ResultSet rs = checkPs.executeQuery();
            
            if (rs.next()) {
                String nombre = rs.getString("nombre");
                System.out.println("Estudiante encontrado: " + nombre);
                
                System.out.print("¿Está seguro de eliminar? (s/n): ");
                String confirmacion = scanner.next();
                
                if (confirmacion.equalsIgnoreCase("s")) {
                    String deleteSql = "DELETE FROM estudiantes WHERE id = ?";
                    
                    try (PreparedStatement deletePs = conn.prepareStatement(deleteSql)) {
                        deletePs.setInt(1, id);
                        
                        int filas = deletePs.executeUpdate();
                        
                        if (filas > 0) {
                            System.out.println("✓ Estudiante eliminado exitosamente");
                        } else {
                            System.out.println("✗ Error al eliminar");
                        }
                    }
                } else {
                    System.out.println("Operación cancelada");
                }
            } else {
                System.out.println("✗ Estudiante no encontrado");
            }
            
        } catch (SQLException e) {
            System.err.println("Error: " + e.getMessage());
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 6: MENÚ CRUD -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-list-alt me-2"></i>MenuCRUD.java
                </h3>
                <p class="programa-description">
                    Menú interactivo completo que integra todas las operaciones CRUD en un solo programa.
                </p>
                <ul class="programa-features">
                    <li>Menú con 5 opciones (CRUD + Salir)</li>
                    <li>Cada operación en un método separado</li>
                    <li>Bucle do-while para repetir</li>
                    <li>Switch para navegación</li>
                    <li>Programa completo de gestión</li>
                </ul>
                <div>
                    <a href="../semana8/codigo/MenuCRUD.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code6')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code6" class="code-container" style="display: none;">
                    <pre><code>import java.sql.*;
import java.util.Scanner;

public class MenuCRUD {
    static Scanner scanner = new Scanner(System.in);
    
    public static void mostrarMenu() {
        System.out.println("\n=== SISTEMA DE GESTIÓN DE ESTUDIANTES ===");
        System.out.println("1. Insertar estudiante");
        System.out.println("2. Consultar estudiantes");
        System.out.println("3. Actualizar estudiante");
        System.out.println("4. Eliminar estudiante");
        System.out.println("5. Salir");
        System.out.print("Seleccione opción: ");
    }
    
    public static void insertar() {
        System.out.println("\n--- INSERTAR ESTUDIANTE ---");
        System.out.print("Nombre: ");
        String nombre = scanner.nextLine();
        System.out.print("Edad: ");
        int edad = scanner.nextInt();
        scanner.nextLine();
        System.out.print("Carrera: ");
        String carrera = scanner.nextLine();
        System.out.print("Promedio: ");
        double promedio = scanner.nextDouble();
        scanner.nextLine();
        
        String sql = "INSERT INTO estudiantes (nombre, edad, carrera, promedio) VALUES (?, ?, ?, ?)";
        
        try (Connection conn = ConexionDB.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setString(1, nombre);
            ps.setInt(2, edad);
            ps.setString(3, carrera);
            ps.setDouble(4, promedio);
            
            if (ps.executeUpdate() > 0) {
                System.out.println("✓ Insertado exitosamente");
            }
        } catch (SQLException e) {
            System.err.println("Error: " + e.getMessage());
        }
    }
    
    public static void consultar() {
        String sql = "SELECT * FROM estudiantes ORDER BY id";
        
        try (Connection conn = ConexionDB.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(sql)) {
            
            System.out.println("\n--- LISTA DE ESTUDIANTES ---");
            while (rs.next()) {
                System.out.printf("ID: %d | %s | %d años | %s | %.2f\n",
                    rs.getInt("id"), rs.getString("nombre"),
                    rs.getInt("edad"), rs.getString("carrera"),
                    rs.getDouble("promedio"));
            }
        } catch (SQLException e) {
            System.err.println("Error: " + e.getMessage());
        }
    }
    
    public static void actualizar() {
        System.out.println("\n--- ACTUALIZAR ESTUDIANTE ---");
        System.out.print("ID a actualizar: ");
        int id = scanner.nextInt();
        scanner.nextLine();
        
        System.out.print("Nuevo nombre: ");
        String nombre = scanner.nextLine();
        System.out.print("Nueva edad: ");
        int edad = scanner.nextInt();
        scanner.nextLine();
        System.out.print("Nueva carrera: ");
        String carrera = scanner.nextLine();
        System.out.print("Nuevo promedio: ");
        double promedio = scanner.nextDouble();
        scanner.nextLine();
        
        String sql = "UPDATE estudiantes SET nombre=?, edad=?, carrera=?, promedio=? WHERE id=?";
        
        try (Connection conn = ConexionDB.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setString(1, nombre);
            ps.setInt(2, edad);
            ps.setString(3, carrera);
            ps.setDouble(4, promedio);
            ps.setInt(5, id);
            
            if (ps.executeUpdate() > 0) {
                System.out.println("✓ Actualizado exitosamente");
            }
        } catch (SQLException e) {
            System.err.println("Error: " + e.getMessage());
        }
    }
    
    public static void eliminar() {
        System.out.println("\n--- ELIMINAR ESTUDIANTE ---");
        System.out.print("ID a eliminar: ");
        int id = scanner.nextInt();
        scanner.nextLine();
        
        String sql = "DELETE FROM estudiantes WHERE id=?";
        
        try (Connection conn = ConexionDB.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            
            ps.setInt(1, id);
            
            if (ps.executeUpdate() > 0) {
                System.out.println("✓ Eliminado exitosamente");
            } else {
                System.out.println("✗ No encontrado");
            }
        } catch (SQLException e) {
            System.err.println("Error: " + e.getMessage());
        }
    }
    
    public static void main(String[] args) {
        int opcion;
        
        do {
            mostrarMenu();
            opcion = scanner.nextInt();
            scanner.nextLine();
            
            switch(opcion) {
                case 1: insertar(); break;
                case 2: consultar(); break;
                case 3: actualizar(); break;
                case 4: eliminar(); break;
                case 5: System.out.println("¡Hasta luego!"); break;
                default: System.out.println("Opción inválida");
            }
        } while (opcion != 5);
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

        </div>
    </section>

    <!-- APRENDIZAJES -->
    <section class="py-5" style="background: linear-gradient(180deg, #0a0a0f 0%, #1a1a2e 100%);">
        <div class="container">
            <h2 class="text-center fw-bold mb-5" style="font-family: 'Orbitron', sans-serif; color: #0066cc; text-shadow: 0 0 20px #0066cc;">
                <i class="fas fa-graduation-cap me-2"></i>Aprendizajes de la Semana
            </h2>
            
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-plug" style="font-size: 3rem; color: #0066cc; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #0066cc;">JDBC</h5>
                        <p class="text-muted">Conexión de Java con bases de datos MySQL usando drivers.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-shield-alt" style="font-size: 3rem; color: #00ccff; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #00ccff;">PreparedStatement</h5>
                        <p class="text-muted">Consultas seguras que previenen SQL Injection.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-database" style="font-size: 3rem; color: #003366; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #003366;">CRUD</h5>
                        <p class="text-muted">Operaciones básicas: Create, Read, Update, Delete.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-table" style="font-size: 3rem; color: #39ff14; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #39ff14;">ResultSet</h5>
                        <p class="text-muted">Recorrido y procesamiento de resultados de consultas.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- NAVEGACIÓN ENTRE SEMANAS -->
    <section class="py-5">
        <div class="container">
            <div class="row g-3">
                <div class="col-md-4">
                    <a href="semana7.jsp" class="btn btn-outline-primary btn-lg w-100 py-3">
                        <i class="fas fa-arrow-left me-2"></i>Semana 7
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="../index.jsp" class="btn btn-outline-light btn-lg w-100 py-3">
                        <i class="fas fa-home me-2"></i>Inicio
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="semana9.jsp" class="btn btn-primary btn-lg w-100 py-3" style="background: linear-gradient(45deg, #0066cc, #00ccff); border: none;">
                        Semana 9<i class="fas fa-arrow-right ms-2"></i>
                    </a>
                </div>
            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <footer class="footer-section">
        <div class="container text-center">
            <p class="mb-2">
                <i class="fas fa-gamepad me-2"></i>
                Desarrollado con <i class="fas fa-heart text-danger"></i> usando Java y JSP
            </p>
            <p class="text-muted small mb-0">
                <i class="fas fa-code me-1"></i> &copy; 2026 Axel Caparo. Todos los derechos reservados.
            </p>
        </div>
    </footer>

    <!-- WHATSAPP -->
    <a href="https://wa.me/51920523268" class="whatsapp-btn" target="_blank">
        <i class="fab fa-whatsapp"></i>
    </a>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <script>
        // CURSOR PERSONALIZADO
        const cursor = document.getElementById('cursor');
        const cursorDot = document.getElementById('cursor-dot');
        
        document.addEventListener('mousemove', (e) => {
            cursor.style.left = e.clientX + 'px';
            cursor.style.top = e.clientY + 'px';
            cursorDot.style.left = e.clientX + 'px';
            cursorDot.style.top = e.clientY + 'px';
        });

        // MOSTRAR/OCULTAR CÓDIGO
        function toggleCode(id) {
            const codeDiv = document.getElementById(id);
            if (codeDiv.style.display === 'none') {
                codeDiv.style.display = 'block';
            } else {
                codeDiv.style.display = 'none';
            }
        }

        // SCROLL SUAVE
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                const href = this.getAttribute('href');
                if (href === '#') return;
                e.preventDefault();
                const target = document.querySelector(href);
                if (target) {
                    target.scrollIntoView({ behavior: 'smooth' });
                }
            });
        });
    </script>
</body>
</html>
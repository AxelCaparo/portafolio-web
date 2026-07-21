<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Semana 1 - Introducción a Java | Axel Caparo</title>
    
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
            --neon-blue: #00f3ff;
            --neon-purple: #bc13fe;
            --neon-pink: #ff006e;
            --neon-green: #39ff14;
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
            border: 2px solid #00f3ff;
            border-radius: 50%;
            pointer-events: none;
            z-index: 99999;
            transition: transform 0.1s ease;
            box-shadow: 0 0 10px #00f3ff, 0 0 20px #00f3ff;
        }
        
        .custom-cursor-dot {
            position: fixed;
            width: 6px;
            height: 6px;
            background: #bc13fe;
            border-radius: 50%;
            pointer-events: none;
            z-index: 99999;
            box-shadow: 0 0 10px #bc13fe;
        }
        
        /* HERO SEMANA */
        .hero-semana {
            min-height: 60vh;
            background: linear-gradient(135deg, #0a0a0f 0%, #1a1a2e 50%, #16213e 100%);
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
                radial-gradient(circle at 20% 30%, rgba(0, 243, 255, 0.3) 0%, transparent 40%),
                radial-gradient(circle at 80% 70%, rgba(188, 19, 254, 0.3) 0%, transparent 40%);
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
            background: linear-gradient(45deg, #00f3ff, #bc13fe, #ff006e);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-transform: uppercase;
            letter-spacing: 5px;
            text-shadow: 0 0 30px rgba(0, 243, 255, 0.5);
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
            background: linear-gradient(45deg, #00f3ff, #bc13fe);
            border-radius: 50px;
            font-family: 'Orbitron', sans-serif;
            font-size: 1.2rem;
            font-weight: 700;
            color: #fff;
            margin-bottom: 20px;
            box-shadow: 0 0 30px rgba(0, 243, 255, 0.5);
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }
        
        /* TARJETAS DE PROGRAMAS */
        .programa-card {
            background: var(--card-bg);
            border: 2px solid rgba(0, 243, 255, 0.3);
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
            background: linear-gradient(90deg, #00f3ff, #bc13fe, #ff006e);
        }
        
        .programa-card:hover {
            transform: translateY(-10px);
            border-color: #00f3ff;
            box-shadow: 0 10px 40px rgba(0, 243, 255, 0.4);
        }
        
        .programa-title {
            font-family: 'Orbitron', sans-serif;
            font-size: 1.8rem;
            color: #00f3ff;
            margin-bottom: 15px;
            text-shadow: 0 0 10px rgba(0, 243, 255, 0.5);
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
            content: '';
            color: #00f3ff;
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
            border: 2px solid #bc13fe;
            color: #bc13fe;
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
            background: #bc13fe;
            color: #fff;
            box-shadow: 0 0 20px rgba(188, 19, 254, 0.5);
            transform: translateY(-3px);
        }
        
        /* CÓDIGO FUENTE */
        .code-container {
            background: #0d1117;
            border: 2px solid rgba(0, 243, 255, 0.3);
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
            background: linear-gradient(45deg, #00f3ff, #bc13fe);
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
        
        .code-container code {
            color: #e6edf3;
        }
        
        /* RESUMEN SEMANA */
        .resumen-box {
            background: linear-gradient(135deg, rgba(0, 243, 255, 0.1), rgba(188, 19, 254, 0.1));
            border: 2px solid rgba(0, 243, 255, 0.3);
            border-radius: 15px;
            padding: 30px;
            margin-bottom: 40px;
        }
        
        .resumen-title {
            font-family: 'Orbitron', sans-serif;
            color: #00f3ff;
            font-size: 1.5rem;
            margin-bottom: 15px;
            text-shadow: 0 0 10px rgba(0, 243, 255, 0.5);
        }
        
        /* NAVIGATION */
        .nav-semanas {
            background: rgba(10, 10, 15, 0.95);
            backdrop-filter: blur(10px);
            border-bottom: 2px solid var(--neon-blue);
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
            color: var(--neon-blue) !important;
            text-shadow: 0 0 10px var(--neon-blue);
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
            border-top: 2px solid var(--neon-blue);
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
            background: linear-gradient(#00f3ff, #bc13fe);
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
            <a class="navbar-brand fw-bold" href="../index.jsp" style="color: #00f3ff; font-family: 'Orbitron', sans-serif; text-shadow: 0 0 10px #00f3ff;">
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

    <!-- HERO SEMANA 1 -->
    <section class="hero-semana">
        <div class="container text-center">
            <div class="semana-badge">
                <i class="fas fa-java me-2"></i> SEMANA 1
            </div>
            <h1 class="semana-title mb-4">Introducción a Java</h1>
            <p class="lead mb-4" style="font-size: 1.5rem; color: #aaa;">
                <i class="fas fa-laptop-code me-2"></i> Operaciones Básicas y Geometría
            </p>
            <div class="mt-4">
                <a href="#programas" class="btn btn-primary btn-lg rounded-pill px-5 py-3 me-3" style="background: linear-gradient(45deg, #00f3ff, #bc13fe); border: none;">
                    <i class="fas fa-code me-2"></i> Ver Programas
                </a>
                <a href="semana1/codigo/" class="btn btn-outline-light btn-lg rounded-pill px-5 py-3">
                    <i class="fas fa-folder-open me-2"></i> Ver Archivos
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
                    En esta primera semana, aprendimos los <strong style="color: #00f3ff;">fundamentos de Java</strong>, 
                    incluyendo la estructura básica de un programa, tipos de datos, variables, y operaciones matemáticas. 
                    Desarrollamos programas para calcular áreas de figuras geométricas y realizar operaciones básicas, 
                    sentando las bases para proyectos más complejos en las siguientes semanas.
                </p>
                <div class="row mt-4">
                    <div class="col-md-4 text-center">
                        <div style="font-size: 2.5rem; color: #00f3ff; font-family: 'Orbitron', sans-serif;">5+</div>
                        <p class="text-muted">Programas</p>
                    </div>
                    <div class="col-md-4 text-center">
                        <div style="font-size: 2.5rem; color: #bc13fe; font-family: 'Orbitron', sans-serif;">100%</div>
                        <p class="text-muted">Completado</p>
                    </div>
                    <div class="col-md-4 text-center">
                        <div style="font-size: 2.5rem; color: #39ff14; font-family: 'Orbitron', sans-serif;">Básico</div>
                        <p class="text-muted">Nivel</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- PROGRAMAS -->
    <section id="programas" class="py-5">
        <div class="container">
            <h2 class="text-center fw-bold mb-5" style="font-family: 'Orbitron', sans-serif; color: #00f3ff; text-shadow: 0 0 20px #00f3ff;">
                <i class="fas fa-code me-2"></i>Programas Desarrollados
            </h2>

            <!-- PROGRAMA 1: RECTÁNGULO -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-vector-square me-2"></i>Rectangulo.java
                </h3>
                <p class="programa-description">
                    Programa que calcula el área y perímetro de un rectángulo ingresando base y altura.
                </p>
                <ul class="programa-features">
                    <li>Entrada de datos por Scanner</li>
                    <li>Cálculo de área (base × altura)</li>
                    <li>Cálculo de perímetro (2 × (base + altura))</li>
                    <li>Salida formateada con mensajes claros</li>
                </ul>
                <div>
                    <a href="semana1/codigo/Rectangulo.java" download class="btn-download">
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code1')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code1" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class Rectangulo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== CÁLCULO DE RECTÁNGULO ===");
        System.out.print("Ingrese la base: ");
        double base = scanner.nextDouble();
        
        System.out.print("Ingrese la altura: ");
        double altura = scanner.nextDouble();
        
        double area = base * altura;
        double perimetro = 2 * (base + altura);
        
        System.out.println("\n--- RESULTADOS ---");
        System.out.println("Área: " + area + " u²");
        System.out.println("Perímetro: " + perimetro + " u");
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 2: ROMBO -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-diamond me-2"></i>Rombo.java
                </h3>
                <p class="programa-description">
                    Programa que calcula el área de un rombo utilizando sus diagonales mayor y menor.
                </p>
                <ul class="programa-features">
                    <li>Entrada de diagonal mayor y menor</li>
                    <li>Fórmula: (D × d) / 2</li>
                    <li>Validación de datos positivos</li>
                    <li>Resultado con unidades cuadradas</li>
                </ul>
                <div>
                    <a href="semana1/codigo/Rombo.java" download class="btn-download">
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code2')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code2" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class Rombo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== CÁLCULO DE ROMBO ===");
        System.out.print("Ingrese diagonal mayor: ");
        double D = scanner.nextDouble();
        
        System.out.print("Ingrese diagonal menor: ");
        double d = scanner.nextDouble();
        
        if (D > 0 && d > 0) {
            double area = (D * d) / 2;
            System.out.println("\n--- RESULTADO ---");
            System.out.println("Área del rombo: " + area + " u²");
        } else {
            System.out.println("Error: Las diagonales deben ser positivas");
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 3: TRIÁNGULO -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-play me-2"></i>Triangulo.java
                </h3>
                <p class="programa-description">
                    Programa que calcula el área de un triángulo usando base y altura, y también usando la fórmula de Herón.
                </p>
                <ul class="programa-features">
                    <li>Cálculo con base y altura</li>
                    <li>Cálculo con fórmula de Herón (3 lados)</li>
                    <li>Uso de Math.sqrt() para raíz cuadrada</li>
                    <li>Comparación de ambos métodos</li>
                </ul>
                <div>
                    <a href="semana1/codigo/Triangulo.java" download class="btn-download">
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code3')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code3" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class Triangulo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== CÁLCULO DE TRIÁNGULO ===");
        
        // Método 1: Base y altura
        System.out.print("Ingrese la base: ");
        double base = scanner.nextDouble();
        System.out.print("Ingrese la altura: ");
        double altura = scanner.nextDouble();
        
        double area1 = (base * altura) / 2;
        System.out.println("\nÁrea (base × altura): " + area1 + " u²");
        
        // Método 2: Fórmula de Herón
        System.out.println("\n--- FÓRMULA DE HERÓN ---");
        System.out.print("Lado a: ");
        double a = scanner.nextDouble();
        System.out.print("Lado b: ");
        double b = scanner.nextDouble();
        System.out.print("Lado c: ");
        double c = scanner.nextDouble();
        
        double s = (a + b + c) / 2;
        double area2 = Math.sqrt(s * (s - a) * (s - b) * (s - c));
        System.out.println("Área (Herón): " + area2 + " u²");
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 4: CÍRCULO -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-circle me-2"></i>Circulo.java
                </h3>
                <p class="programa-description">
                    Programa que calcula el área y perímetro de un círculo usando el radio y la constante PI.
                </p>
                <ul class="programa-features">
                    <li>Uso de Math.PI para precisión</li>
                    <li>Cálculo de área: π × r²</li>
                    <li>Cálculo de perímetro: 2 × π × r</li>
                    <li>Formato de salida con 2 decimales</li>
                </ul>
                <div>
                    <a href="semana1/codigo/Circulo.java" download class="btn-download">
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code4')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code4" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class Circulo {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== CÁLCULO DE CÍRCULO ===");
        System.out.print("Ingrese el radio: ");
        double radio = scanner.nextDouble();
        
        if (radio > 0) {
            double area = Math.PI * Math.pow(radio, 2);
            double perimetro = 2 * Math.PI * radio;
            
            System.out.println("\n--- RESULTADOS ---");
            System.out.printf("Área: %.2f u²\n", area);
            System.out.printf("Perímetro: %.2f u\n", perimetro);
        } else {
            System.out.println("Error: El radio debe ser positivo");
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 5: OPERACIONES BÁSICAS -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-calculator me-2"></i>OperacionesBasicas.java
                </h3>
                <p class="programa-description">
                    Calculadora simple que realiza las 4 operaciones básicas con dos números ingresados por el usuario.
                </p>
                <ul class="programa-features">
                    <li>Suma, resta, multiplicación y división</li>
                    <li>Validación de división por cero</li>
                    <li>Entrada de dos números</li>
                    <li>Resultados formateados</li>
                </ul>
                <div>
                    <a href="semana1/codigo/OperacionesBasicas.java" download class="btn-download">
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code5')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code5" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class OperacionesBasicas {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== CALCULADORA BÁSICA ===");
        System.out.print("Ingrese primer número: ");
        double num1 = scanner.nextDouble();
        
        System.out.print("Ingrese segundo número: ");
        double num2 = scanner.nextDouble();
        
        double suma = num1 + num2;
        double resta = num1 - num2;
        double multiplicacion = num1 * num2;
        
        System.out.println("\n--- RESULTADOS ---");
        System.out.println("Suma: " + suma);
        System.out.println("Resta: " + resta);
        System.out.println("Multiplicación: " + multiplicacion);
        
        if (num2 != 0) {
            double division = num1 / num2;
            System.out.println("División: " + division);
        } else {
            System.out.println("División: No se puede dividir por cero");
        }
        
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
            <h2 class="text-center fw-bold mb-5" style="font-family: 'Orbitron', sans-serif; color: #39ff14; text-shadow: 0 0 20px #39ff14;">
                <i class="fas fa-graduation-cap me-2"></i>Aprendizajes de la Semana
            </h2>
            
            <div class="row g-4">
                <div class="col-md-4">
                    <div class="programa-card text-center">
                        <i class="fas fa-code" style="font-size: 3rem; color: #00f3ff; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #00f3ff;">Estructura Java</h5>
                        <p class="text-muted">Aprendimos la estructura básica de un programa Java: clases, métodos y main.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="programa-card text-center">
                        <i class="fas fa-keyboard" style="font-size: 3rem; color: #bc13fe; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #bc13fe;">Scanner</h5>
                        <p class="text-muted">Uso de Scanner para entrada de datos por consola del usuario.</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="programa-card text-center">
                        <i class="fas fa-calculator" style="font-size: 3rem; color: #39ff14; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #39ff14;">Operaciones</h5>
                        <p class="text-muted">Operadores aritméticos: +, -, *, /, % y Math.pow(), Math.sqrt().</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- NAVEGACIÓN ENTRE SEMANAS -->
    <section class="py-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <a href="../index.jsp" class="btn btn-outline-primary btn-lg w-100 py-3">
                        <i class="fas fa-arrow-left me-2"></i>Volver al Inicio
                    </a>
                </div>
                <div class="col-md-6">
                    <a href="semana2.jsp" class="btn btn-primary btn-lg w-100 py-3" style="background: linear-gradient(45deg, #00f3ff, #bc13fe); border: none;">
                        Siguiente: Semana 2<i class="fas fa-arrow-right ms-2"></i>
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
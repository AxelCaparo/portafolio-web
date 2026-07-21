<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Semana 6 - Métodos y Series | Axel Caparo</title>
    
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
            --neon-cyan: #00ffff;
            --neon-violet: #8b5cf6;
            --neon-indigo: #6366f1;
            --neon-blue: #00f3ff;
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
            border: 2px solid var(--neon-cyan);
            border-radius: 50%;
            pointer-events: none;
            z-index: 99999;
            transition: transform 0.1s ease;
            box-shadow: 0 0 10px var(--neon-cyan), 0 0 20px var(--neon-cyan);
        }
        
        .custom-cursor-dot {
            position: fixed;
            width: 6px;
            height: 6px;
            background: var(--neon-violet);
            border-radius: 50%;
            pointer-events: none;
            z-index: 99999;
            box-shadow: 0 0 10px var(--neon-violet);
        }
        
        /* HERO SEMANA */
        .hero-semana {
            min-height: 60vh;
            background: linear-gradient(135deg, #0a0a0f 0%, #0a1a1a 50%, #1a0a2a 100%);
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
                radial-gradient(circle at 20% 30%, rgba(0, 255, 255, 0.3) 0%, transparent 40%),
                radial-gradient(circle at 80% 70%, rgba(139, 92, 246, 0.3) 0%, transparent 40%);
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
            background: linear-gradient(45deg, #00ffff, #8b5cf6, #6366f1);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-transform: uppercase;
            letter-spacing: 5px;
            text-shadow: 0 0 30px rgba(0, 255, 255, 0.5);
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
            background: linear-gradient(45deg, #00ffff, #8b5cf6);
            border-radius: 50px;
            font-family: 'Orbitron', sans-serif;
            font-size: 1.2rem;
            font-weight: 700;
            color: #000;
            margin-bottom: 20px;
            box-shadow: 0 0 30px rgba(0, 255, 255, 0.5);
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }
        
        /* TARJETAS DE PROGRAMAS */
        .programa-card {
            background: var(--card-bg);
            border: 2px solid rgba(0, 255, 255, 0.3);
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
            background: linear-gradient(90deg, #00ffff, #8b5cf6, #6366f1);
        }
        
        .programa-card:hover {
            transform: translateY(-10px);
            border-color: var(--neon-cyan);
            box-shadow: 0 10px 40px rgba(0, 255, 255, 0.4);
        }
        
        .programa-title {
            font-family: 'Orbitron', sans-serif;
            font-size: 1.8rem;
            color: var(--neon-cyan);
            margin-bottom: 15px;
            text-shadow: 0 0 10px rgba(0, 255, 255, 0.5);
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
            color: var(--neon-cyan);
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
            border: 2px solid var(--neon-violet);
            color: var(--neon-violet);
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
            background: var(--neon-violet);
            color: #fff;
            box-shadow: 0 0 20px rgba(139, 92, 246, 0.5);
            transform: translateY(-3px);
        }
        
        /* CÓDIGO FUENTE */
        .code-container {
            background: #0d1117;
            border: 2px solid rgba(0, 255, 255, 0.3);
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
            background: linear-gradient(45deg, #00ffff, #8b5cf6);
            padding: 5px 15px;
            border-radius: 20px;
            font-family: 'Orbitron', sans-serif;
            font-size: 0.8rem;
            font-weight: 700;
            color: #000;
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
            background: linear-gradient(135deg, rgba(0, 255, 255, 0.1), rgba(139, 92, 246, 0.1));
            border: 2px solid rgba(0, 255, 255, 0.3);
            border-radius: 15px;
            padding: 30px;
            margin-bottom: 40px;
        }
        
        .resumen-title {
            font-family: 'Orbitron', sans-serif;
            color: var(--neon-cyan);
            font-size: 1.5rem;
            margin-bottom: 15px;
            text-shadow: 0 0 10px rgba(0, 255, 255, 0.5);
        }
        
        /* NAVIGATION */
        .nav-semanas {
            background: rgba(10, 10, 15, 0.95);
            backdrop-filter: blur(10px);
            border-bottom: 2px solid var(--neon-cyan);
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
            color: var(--neon-cyan) !important;
            text-shadow: 0 0 10px var(--neon-cyan);
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
            border-top: 2px solid var(--neon-cyan);
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
            background: linear-gradient(var(--neon-cyan), var(--neon-violet));
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
            <a class="navbar-brand fw-bold" href="../index.jsp" style="color: var(--neon-cyan); font-family: 'Orbitron', sans-serif; text-shadow: 0 0 10px var(--neon-cyan);">
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

    <!-- HERO SEMANA 6 -->
    <section class="hero-semana">
        <div class="container text-center">
            <div class="semana-badge">
                <i class="fas fa-infinity me-2"></i> SEMANA 6
            </div>
            <h1 class="semana-title mb-4">Métodos y Series</h1>
            <p class="lead mb-4" style="font-size: 1.5rem; color: #aaa;">
                <i class="fas fa-wave-square me-2"></i> Series Numéricas y Calculadora Avanzada
            </p>
            <div class="mt-4">
                <a href="#programas" class="btn btn-primary btn-lg rounded-pill px-5 py-3 me-3" style="background: linear-gradient(45deg, #00ffff, #8b5cf6); border: none; color: #000;">
                    <i class="fas fa-code me-2"></i> Ver Programas
                </a>
                <a href="../semana6/codigo/" class="btn btn-outline-light btn-lg rounded-pill px-5 py-3" download>
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
                    En esta sexta semana, combinamos <strong style="color: #00ffff;">métodos avanzados</strong> con 
                    <strong style="color: #8b5cf6;">series numéricas</strong>. Implementamos la serie de Fibonacci, 
                    potencias, factoriales y series geométricas usando recursión y bucles. También desarrollamos 
                    una calculadora científica avanzada con funciones trigonométricas y logarítmicas.
                </p>
                <div class="row mt-4">
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #00ffff; font-family: 'Orbitron', sans-serif;">6</div>
                        <p class="text-muted">Programas</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #8b5cf6; font-family: 'Orbitron', sans-serif;">100%</div>
                        <p class="text-muted">Completado</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #6366f1; font-family: 'Orbitron', sans-serif;">Avanz</div>
                        <p class="text-muted">Nivel</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #39ff14; font-family: 'Orbitron', sans-serif;">Σ</div>
                        <p class="text-muted">Enfoque</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- PROGRAMAS -->
    <section id="programas" class="py-5">
        <div class="container">
            <h2 class="text-center fw-bold mb-5" style="font-family: 'Orbitron', sans-serif; color: #00ffff; text-shadow: 0 0 20px #00ffff;">
                <i class="fas fa-code me-2"></i>Programas Desarrollados
            </h2>

            <!-- PROGRAMA 1: SERIE FIBONACCI -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-wave-square me-2"></i>SerieFibonacci.java
                </h3>
                <p class="programa-description">
                    Genera la serie de Fibonacci hasta n términos usando métodos recursivos e iterativos.
                </p>
                <ul class="programa-features">
                    <li>Método recursivo fibonacciRecursivo()</li>
                    <li>Método iterativo fibonacciIterativo()</li>
                    <li>Validación de entrada positiva</li>
                    <li>Mostrar serie completa</li>
                    <li>Comparación de ambos métodos</li>
                </ul>
                <div>
                    <a href="../semana6/codigo/SerieFibonacci.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code1')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code1" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class SerieFibonacci {
    
    // Método recursivo
    public static int fibonacciRecursivo(int n) {
        if (n <= 1) return n;
        return fibonacciRecursivo(n - 1) + fibonacciRecursivo(n - 2);
    }
    
    // Método iterativo
    public static void fibonacciIterativo(int n) {
        int a = 0, b = 1;
        System.out.print("Serie: ");
        for (int i = 0; i < n; i++) {
            System.out.print(a + " ");
            int temp = a + b;
            a = b;
            b = temp;
        }
        System.out.println();
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== SERIE FIBONACCI ===");
        System.out.print("Ingrese número de términos: ");
        int n = scanner.nextInt();
        
        if (n > 0) {
            System.out.println("\n--- MÉTODO ITERATIVO ---");
            fibonacciIterativo(n);
            
            System.out.println("\n--- MÉTODO RECURSIVO ---");
            System.out.print("Serie: ");
            for (int i = 0; i < n; i++) {
                System.out.print(fibonacciRecursivo(i) + " ");
            }
            System.out.println();
        } else {
            System.out.println("Error: Ingrese un número positivo");
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 2: SERIE POTENCIAS -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-superscript me-2"></i>SeriePotencias.java
                </h3>
                <p class="programa-description">
                    Calcula la suma de potencias: 1^1 + 2^2 + 3^3 + ... + n^n usando métodos con Math.pow().
                </p>
                <ul class="programa-features">
                    <li>Método calcularPotencia() con Math.pow()</li>
                    <li>Método sumarSerie() con bucle for</li>
                    <li>Acumulador para suma total</li>
                    <li>Mostrar cada término de la serie</li>
                </ul>
                <div>
                    <a href="../semana6/codigo/SeriePotencias.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code2')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code2" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class SeriePotencias {
    
    public static double calcularPotencia(int base, int exponente) {
        return Math.pow(base, exponente);
    }
    
    public static double sumarSerie(int n) {
        double suma = 0;
        System.out.println("Términos de la serie:");
        
        for (int i = 1; i <= n; i++) {
            double termino = calcularPotencia(i, i);
            suma += termino;
            System.out.printf("%d^%d = %.0f\n", i, i, termino);
        }
        
        return suma;
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== SERIE DE POTENCIAS ===");
        System.out.print("Ingrese número de términos: ");
        int n = scanner.nextInt();
        
        if (n > 0) {
            double total = sumarSerie(n);
            System.out.printf("\nSuma total: %.0f\n", total);
        } else {
            System.out.println("Error: Ingrese un número positivo");
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 3: SERIE FACTORIAL -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-exclamation me-2"></i>SerieFactorial.java
                </h3>
                <p class="programa-description">
                    Calcula factoriales y la serie: 1/1! + 1/2! + 1/3! + ... + 1/n! aproximando el número e.
                </p>
                <ul class="programa-features">
                    <li>Método factorial() con bucle</li>
                    <li>Método calcularSerieE() para aproximar e</li>
                    <li>Uso de double para precisión</li>
                    <li>Comparación con Math.E</li>
                </ul>
                <div>
                    <a href="../semana6/codigo/SerieFactorial.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code3')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code3" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class SerieFactorial {
    
    public static long factorial(int n) {
        long fact = 1;
        for (int i = 1; i <= n; i++) {
            fact *= i;
        }
        return fact;
    }
    
    public static double calcularSerieE(int n) {
        double suma = 0;
        for (int i = 0; i <= n; i++) {
            suma += 1.0 / factorial(i);
        }
        return suma;
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== SERIE FACTORIAL ===");
        
        System.out.print("Ingrese número para factorial: ");
        int num = scanner.nextInt();
        
        if (num >= 0 && num <= 20) {
            System.out.printf("%d! = %d\n", num, factorial(num));
        } else {
            System.out.println("Error: Ingrese un número entre 0 y 20");
        }
        
        System.out.print("\nIngrese términos para aproximar e: ");
        int terminos = scanner.nextInt();
        
        if (terminos > 0) {
            double aproximacion = calcularSerieE(terminos);
            System.out.printf("Aproximación de e: %.10f\n", aproximacion);
            System.out.printf("Math.E: %.10f\n", Math.E);
            System.out.printf("Diferencia: %.10f\n", Math.abs(Math.E - aproximacion));
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 4: CALCULADORA AVANZADA -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-calculator me-2"></i>CalculadoraAvanzada.java
                </h3>
                <p class="programa-description">
                    Calculadora científica con funciones trigonométricas, logarítmicas y exponenciales.
                </p>
                <ul class="programa-features">
                    <li>Funciones: sin, cos, tan</li>
                    <li>Logaritmo natural y base 10</li>
                    <li>Raíz cuadrada y cúbica</li>
                    <li>Exponencial (e^x)</li>
                    <li>Menú interactivo completo</li>
                </ul>
                <div>
                    <a href="../semana6/codigo/CalculadoraAvanzada.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code4')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code4" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class CalculadoraAvanzada {
    
    public static void mostrarMenu() {
        System.out.println("\n=== CALCULADORA CIENTÍFICA ===");
        System.out.println("1. Seno (sin)");
        System.out.println("2. Coseno (cos)");
        System.out.println("3. Tangente (tan)");
        System.out.println("4. Logaritmo natural (ln)");
        System.out.println("5. Logaritmo base 10 (log)");
        System.out.println("6. Raíz cuadrada");
        System.out.println("7. Raíz cúbica");
        System.out.println("8. Exponencial (e^x)");
        System.out.println("9. Salir");
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int opcion;
        
        do {
            mostrarMenu();
            System.out.print("Seleccione opción: ");
            opcion = scanner.nextInt();
            
            if (opcion >= 1 && opcion <= 8) {
                System.out.print("Ingrese número: ");
                double num = scanner.nextDouble();
                double resultado = 0;
                
                switch(opcion) {
                    case 1:
                        resultado = Math.sin(Math.toRadians(num));
                        System.out.printf("sin(%.2f°) = %.6f\n", num, resultado);
                        break;
                    case 2:
                        resultado = Math.cos(Math.toRadians(num));
                        System.out.printf("cos(%.2f°) = %.6f\n", num, resultado);
                        break;
                    case 3:
                        resultado = Math.tan(Math.toRadians(num));
                        System.out.printf("tan(%.2f°) = %.6f\n", num, resultado);
                        break;
                    case 4:
                        if (num > 0) {
                            resultado = Math.log(num);
                            System.out.printf("ln(%.2f) = %.6f\n", num, resultado);
                        } else {
                            System.out.println("Error: El número debe ser positivo");
                        }
                        break;
                    case 5:
                        if (num > 0) {
                            resultado = Math.log10(num);
                            System.out.printf("log(%.2f) = %.6f\n", num, resultado);
                        } else {
                            System.out.println("Error: El número debe ser positivo");
                        }
                        break;
                    case 6:
                        if (num >= 0) {
                            resultado = Math.sqrt(num);
                            System.out.printf("√%.2f = %.6f\n", num, resultado);
                        } else {
                            System.out.println("Error: No existe raíz cuadrada de negativo");
                        }
                        break;
                    case 7:
                        resultado = Math.cbrt(num);
                        System.out.printf("∛%.2f = %.6f\n", num, resultado);
                        break;
                    case 8:
                        resultado = Math.exp(num);
                        System.out.printf("e^%.2f = %.6f\n", num, resultado);
                        break;
                }
            }
        } while (opcion != 9);
        
        System.out.println("¡Hasta luego!");
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 5: SERIE GEOMÉTRICA -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-chart-line me-2"></i>SerieGeometrica.java
                </h3>
                <p class="programa-description">
                    Calcula la suma de una serie geométrica: a + ar + ar² + ar³ + ... + ar^n
                </p>
                <ul class="programa-features">
                    <li>Método calcularTermino() para ar^n</li>
                    <li>Método sumarSerieGeometrica()</li>
                    <li>Fórmula cerrada: a(r^n - 1)/(r - 1)</li>
                    <li>Validación de razón diferente de 1</li>
                </ul>
                <div>
                    <a href="../semana6/codigo/SerieGeometrica.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code5')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code5" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class SerieGeometrica {
    
    public static double calcularTermino(double a, double r, int n) {
        return a * Math.pow(r, n);
    }
    
    public static double sumarSerieGeometrica(double a, double r, int n) {
        double suma = 0;
        System.out.println("Términos de la serie:");
        
        for (int i = 0; i <= n; i++) {
            double termino = calcularTermino(a, r, i);
            suma += termino;
            System.out.printf("a*r^%d = %.2f\n", i, termino);
        }
        
        return suma;
    }
    
    public static double formulaCerrada(double a, double r, int n) {
        if (r == 1) {
            return a * (n + 1);
        }
        return a * (Math.pow(r, n + 1) - 1) / (r - 1);
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== SERIE GEOMÉTRICA ===");
        System.out.print("Primer término (a): ");
        double a = scanner.nextDouble();
        
        System.out.print("Razón (r): ");
        double r = scanner.nextDouble();
        
        System.out.print("Número de términos (n): ");
        int n = scanner.nextInt();
        
        if (n >= 0) {
            System.out.println("\n--- MÉTODO ITERATIVO ---");
            double suma1 = sumarSerieGeometrica(a, r, n);
            System.out.printf("Suma: %.2f\n", suma1);
            
            System.out.println("\n--- FÓRMULA CERRADA ---");
            double suma2 = formulaCerrada(a, r, n);
            System.out.printf("Suma: %.2f\n", suma2);
        } else {
            System.out.println("Error: n debe ser >= 0");
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 6: MENÚ SERIES -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-list-ol me-2"></i>MenuSeries.java
                </h3>
                <p class="programa-description">
                    Menú interactivo que integra todas las series numéricas en un solo programa con métodos modulares.
                </p>
                <ul class="programa-features">
                    <li>Menú con 5 opciones de series</li>
                    <li>Cada serie en un método separado</li>
                    <li>Switch para navegación</li>
                    <li>Validación de entradas</li>
                    <li>Bucle do-while para repetir</li>
                </ul>
                <div>
                    <a href="../semana6/codigo/MenuSeries.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code6')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code6" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class MenuSeries {
    
    public static void serieFibonacci(int n) {
        int a = 0, b = 1;
        System.out.print("Fibonacci: ");
        for (int i = 0; i < n; i++) {
            System.out.print(a + " ");
            int temp = a + b;
            a = b;
            b = temp;
        }
        System.out.println();
    }
    
    public static void serieFactorial(int n) {
        long fact = 1;
        System.out.println("Factoriales:");
        for (int i = 1; i <= n; i++) {
            fact *= i;
            System.out.printf("%d! = %d\n", i, fact);
        }
    }
    
    public static void seriePotencias(int n) {
        double suma = 0;
        for (int i = 1; i <= n; i++) {
            suma += Math.pow(i, i);
        }
        System.out.printf("Suma de potencias: %.0f\n", suma);
    }
    
    public static void seriePares(int n) {
        System.out.print("Números pares: ");
        for (int i = 2; i <= n * 2; i += 2) {
            System.out.print(i + " ");
        }
        System.out.println();
    }
    
    public static void serieImpares(int n) {
        System.out.print("Números impares: ");
        for (int i = 1; i <= n * 2; i += 2) {
            System.out.print(i + " ");
        }
        System.out.println();
    }
    
    public static void mostrarMenu() {
        System.out.println("\n=== MENÚ DE SERIES ===");
        System.out.println("1. Serie Fibonacci");
        System.out.println("2. Serie Factorial");
        System.out.println("3. Serie Potencias");
        System.out.println("4. Serie Números Pares");
        System.out.println("5. Serie Números Impares");
        System.out.println("6. Salir");
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int opcion;
        
        do {
            mostrarMenu();
            System.out.print("Seleccione opción: ");
            opcion = scanner.nextInt();
            
            if (opcion >= 1 && opcion <= 5) {
                System.out.print("Ingrese número de términos: ");
                int n = scanner.nextInt();
                
                if (n > 0) {
                    switch(opcion) {
                        case 1: serieFibonacci(n); break;
                        case 2: serieFactorial(n); break;
                        case 3: seriePotencias(n); break;
                        case 4: seriePares(n); break;
                        case 5: serieImpares(n); break;
                    }
                } else {
                    System.out.println("Error: n debe ser positivo");
                }
            } else if (opcion != 6) {
                System.out.println("Opción inválida");
            }
        } while (opcion != 6);
        
        System.out.println("¡Hasta luego!");
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
            <h2 class="text-center fw-bold mb-5" style="font-family: 'Orbitron', sans-serif; color: #8b5cf6; text-shadow: 0 0 20px #8b5cf6;">
                <i class="fas fa-graduation-cap me-2"></i>Aprendizajes de la Semana
            </h2>
            
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-redo" style="font-size: 3rem; color: #00ffff; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #00ffff;">Recursión</h5>
                        <p class="text-muted">Métodos que se llaman a sí mismos para resolver problemas.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-wave-square" style="font-size: 3rem; color: #8b5cf6; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #8b5cf6;">Series</h5>
                        <p class="text-muted">Secuencias numéricas con patrones matemáticos definidos.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-calculator" style="font-size: 3rem; color: #6366f1; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #6366f1;">Math Class</h5>
                        <p class="text-muted">Uso de Math.pow(), Math.sqrt(), Math.sin(), etc.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-cubes" style="font-size: 3rem; color: #39ff14; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #39ff14;">Modularidad</h5>
                        <p class="text-muted">Dividir programas complejos en métodos simples.</p>
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
                    <a href="semana5.jsp" class="btn btn-outline-primary btn-lg w-100 py-3">
                        <i class="fas fa-arrow-left me-2"></i>Semana 5
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="../index.jsp" class="btn btn-outline-light btn-lg w-100 py-3">
                        <i class="fas fa-home me-2"></i>Inicio
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="semana7.jsp" class="btn btn-primary btn-lg w-100 py-3" style="background: linear-gradient(45deg, #00ffff, #8b5cf6); border: none; color: #000;">
                        Semana 7<i class="fas fa-arrow-right ms-2"></i>
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
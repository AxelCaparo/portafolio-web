<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Semana 3 - Métodos en Java | Axel Caparo</title>
    
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
            border: 2px solid #39ff14;
            border-radius: 50%;
            pointer-events: none;
            z-index: 99999;
            transition: transform 0.1s ease;
            box-shadow: 0 0 10px #39ff14, 0 0 20px #39ff14;
        }
        
        .custom-cursor-dot {
            position: fixed;
            width: 6px;
            height: 6px;
            background: #00f3ff;
            border-radius: 50%;
            pointer-events: none;
            z-index: 99999;
            box-shadow: 0 0 10px #00f3ff;
        }
        
        /* HERO SEMANA */
        .hero-semana {
            min-height: 60vh;
            background: linear-gradient(135deg, #0a0a0f 0%, #1a1a2e 50%, #0f1f0f 100%);
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
                radial-gradient(circle at 20% 30%, rgba(57, 255, 20, 0.3) 0%, transparent 40%),
                radial-gradient(circle at 80% 70%, rgba(0, 243, 255, 0.3) 0%, transparent 40%);
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
            background: linear-gradient(45deg, #39ff14, #00f3ff, #bc13fe);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-transform: uppercase;
            letter-spacing: 5px;
            text-shadow: 0 0 30px rgba(57, 255, 20, 0.5);
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
            background: linear-gradient(45deg, #39ff14, #00f3ff);
            border-radius: 50px;
            font-family: 'Orbitron', sans-serif;
            font-size: 1.2rem;
            font-weight: 700;
            color: #000;
            margin-bottom: 20px;
            box-shadow: 0 0 30px rgba(57, 255, 20, 0.5);
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }
        
        /* TARJETAS DE PROGRAMAS */
        .programa-card {
            background: var(--card-bg);
            border: 2px solid rgba(57, 255, 20, 0.3);
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
            background: linear-gradient(90deg, #39ff14, #00f3ff, #bc13fe);
        }
        
        .programa-card:hover {
            transform: translateY(-10px);
            border-color: #39ff14;
            box-shadow: 0 10px 40px rgba(57, 255, 20, 0.4);
        }
        
        .programa-title {
            font-family: 'Orbitron', sans-serif;
            font-size: 1.8rem;
            color: #39ff14;
            margin-bottom: 15px;
            text-shadow: 0 0 10px rgba(57, 255, 20, 0.5);
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
            color: #39ff14;
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
            border: 2px solid #00f3ff;
            color: #00f3ff;
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
            background: #00f3ff;
            color: #000;
            box-shadow: 0 0 20px rgba(0, 243, 255, 0.5);
            transform: translateY(-3px);
        }
        
        /* CÓDIGO FUENTE */
        .code-container {
            background: #0d1117;
            border: 2px solid rgba(57, 255, 20, 0.3);
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
            background: linear-gradient(45deg, #39ff14, #00f3ff);
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
            background: linear-gradient(135deg, rgba(57, 255, 20, 0.1), rgba(0, 243, 255, 0.1));
            border: 2px solid rgba(57, 255, 20, 0.3);
            border-radius: 15px;
            padding: 30px;
            margin-bottom: 40px;
        }
        
        .resumen-title {
            font-family: 'Orbitron', sans-serif;
            color: #39ff14;
            font-size: 1.5rem;
            margin-bottom: 15px;
            text-shadow: 0 0 10px rgba(57, 255, 20, 0.5);
        }
        
        /* NAVIGATION */
        .nav-semanas {
            background: rgba(10, 10, 15, 0.95);
            backdrop-filter: blur(10px);
            border-bottom: 2px solid var(--neon-green);
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
            color: var(--neon-green) !important;
            text-shadow: 0 0 10px var(--neon-green);
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
            border-top: 2px solid var(--neon-green);
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
            background: linear-gradient(#39ff14, #00f3ff);
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
            <a class="navbar-brand fw-bold" href="../index.jsp" style="color: #39ff14; font-family: 'Orbitron', sans-serif; text-shadow: 0 0 10px #39ff14;">
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

    <!-- HERO SEMANA 3 -->
    <section class="hero-semana">
        <div class="container text-center">
            <div class="semana-badge">
                <i class="fas fa-cogs me-2"></i> SEMANA 3
            </div>
            <h1 class="semana-title mb-4">Métodos en Java</h1>
            <p class="lead mb-4" style="font-size: 1.5rem; color: #aaa;">
                <i class="fas fa-function me-2"></i> Métodos Void y con Retorno
            </p>
            <div class="mt-4">
                <a href="#programas" class="btn btn-primary btn-lg rounded-pill px-5 py-3 me-3" style="background: linear-gradient(45deg, #39ff14, #00f3ff); border: none; color: #000;">
                    <i class="fas fa-code me-2"></i> Ver Programas
                </a>
                <a href="../semana3/codigo/" class="btn btn-outline-light btn-lg rounded-pill px-5 py-3" download>
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
                    En esta tercera semana, aprendimos a organizar el código usando <strong style="color: #39ff14;">métodos</strong>. 
                    Desarrollamos <strong style="color: #00f3ff;">métodos void</strong> que realizan acciones sin retornar valor, 
                    y <strong style="color: #bc13fe;">métodos con retorno</strong> que devuelven resultados. 
                    Aplicamos estos conceptos en calculadoras, conversores y validadores, mejorando la reutilización y legibilidad del código.
                </p>
                <div class="row mt-4">
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #39ff14; font-family: 'Orbitron', sans-serif;">6</div>
                        <p class="text-muted">Programas</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #00f3ff; font-family: 'Orbitron', sans-serif;">100%</div>
                        <p class="text-muted">Completado</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #bc13fe; font-family: 'Orbitron', sans-serif;">Inter</div>
                        <p class="text-muted">Nivel</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #ff006e; font-family: 'Orbitron', sans-serif;">fn()</div>
                        <p class="text-muted">Enfoque</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- PROGRAMAS -->
    <section id="programas" class="py-5">
        <div class="container">
            <h2 class="text-center fw-bold mb-5" style="font-family: 'Orbitron', sans-serif; color: #39ff14; text-shadow: 0 0 20px #39ff14;">
                <i class="fas fa-code me-2"></i>Programas Desarrollados
            </h2>

            <!-- PROGRAMA 1: CALCULADORA MÉTODOS -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-calculator me-2"></i>CalculadoraMetodos.java
                </h3>
                <p class="programa-description">
                    Calculadora completa que utiliza métodos separados para cada operación: sumar, restar, multiplicar y dividir.
                </p>
                <ul class="programa-features">
                    <li>Método sumar() con retorno double</li>
                    <li>Método restar() con retorno double</li>
                    <li>Método multiplicar() con retorno double</li>
                    <li>Método dividir() con validación de cero</li>
                    <li>Menú interactivo con Scanner</li>
                </ul>
                <div>
                    <a href="../semana3/codigo/CalculadoraMetodos.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code1')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code1" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class CalculadoraMetodos {
    
    // Método con retorno: suma
    public static double sumar(double a, double b) {
        return a + b;
    }
    
    // Método con retorno: resta
    public static double restar(double a, double b) {
        return a - b;
    }
    
    // Método con retorno: multiplicación
    public static double multiplicar(double a, double b) {
        return a * b;
    }
    
    // Método con retorno: división (con validación)
    public static double dividir(double a, double b) {
        if (b != 0) {
            return a / b;
        } else {
            System.out.println("Error: No se puede dividir por cero");
            return 0;
        }
    }
    
    // Método void: muestra el menú
    public static void mostrarMenu() {
        System.out.println("\n=== CALCULADORA ===");
        System.out.println("1. Sumar");
        System.out.println("2. Restar");
        System.out.println("3. Multiplicar");
        System.out.println("4. Dividir");
        System.out.println("5. Salir");
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int opcion;
        
        do {
            mostrarMenu();
            System.out.print("Seleccione opción: ");
            opcion = scanner.nextInt();
            
            if (opcion >= 1 && opcion <= 4) {
                System.out.print("Primer número: ");
                double num1 = scanner.nextDouble();
                System.out.print("Segundo número: ");
                double num2 = scanner.nextDouble();
                
                double resultado = 0;
                
                switch(opcion) {
                    case 1: resultado = sumar(num1, num2); break;
                    case 2: resultado = restar(num1, num2); break;
                    case 3: resultado = multiplicar(num1, num2); break;
                    case 4: resultado = dividir(num1, num2); break;
                }
                
                System.out.println("Resultado: " + resultado);
            }
        } while (opcion != 5);
        
        System.out.println("¡Hasta luego!");
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 2: CONVERSOR TEMPERATURA -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-temperature-high me-2"></i>ConversorTemperatura.java
                </h3>
                <p class="programa-description">
                    Conversor de temperaturas entre Celsius, Fahrenheit y Kelvin usando métodos específicos para cada conversión.
                </p>
                <ul class="programa-features">
                    <li>celsiusAFahrenheit() con retorno</li>
                    <li>fahrenheitACelsius() con retorno</li>
                    <li>celsiusAKelvin() con retorno</li>
                    <li>kelvinACelsius() con retorno</li>
                    <li>Menú de opciones interactivo</li>
                </ul>
                <div>
                    <a href="../semana3/codigo/ConversorTemperatura.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code2')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code2" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class ConversorTemperatura {
    
    public static double celsiusAFahrenheit(double celsius) {
        return (celsius * 9/5) + 32;
    }
    
    public static double fahrenheitACelsius(double fahrenheit) {
        return (fahrenheit - 32) * 5/9;
    }
    
    public static double celsiusAKelvin(double celsius) {
        return celsius + 273.15;
    }
    
    public static double kelvinACelsius(double kelvin) {
        return kelvin - 273.15;
    }
    
    public static void mostrarConversiones(double celsius) {
        System.out.println("\n--- CONVERSIONES ---");
        System.out.printf("%.2f°C = %.2f°F\n", celsius, celsiusAFahrenheit(celsius));
        System.out.printf("%.2f°C = %.2f K\n", celsius, celsiusAKelvin(celsius));
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== CONVERSOR DE TEMPERATURA ===");
        System.out.print("Ingrese temperatura en Celsius: ");
        double celsius = scanner.nextDouble();
        
        mostrarConversiones(celsius);
        
        System.out.print("\nIngrese temperatura en Fahrenheit: ");
        double fahrenheit = scanner.nextDouble();
        System.out.printf("%.2f°F = %.2f°C\n", fahrenheit, fahrenheitACelsius(fahrenheit));
        
        System.out.print("\nIngrese temperatura en Kelvin: ");
        double kelvin = scanner.nextDouble();
        System.out.printf("%.2f K = %.2f°C\n", kelvin, kelvinACelsius(kelvin));
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 3: CALCULADORA IMC -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-weight me-2"></i>CalculadoraIMC.java
                </h3>
                <p class="programa-description">
                    Calculadora del Índice de Masa Corporal (IMC) que determina la categoría de peso de una persona.
                </p>
                <ul class="programa-features">
                    <li>Método calcularIMC() con retorno double</li>
                    <li>Método obtenerCategoria() con retorno String</li>
                    <li>Método mostrarResultado() void</li>
                    <li>Clasificación: Bajo peso, Normal, Sobrepeso, Obesidad</li>
                </ul>
                <div>
                    <a href="../semana3/codigo/CalculadoraIMC.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code3')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code3" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class CalculadoraIMC {
    
    public static double calcularIMC(double peso, double altura) {
        return peso / (altura * altura);
    }
    
    public static String obtenerCategoria(double imc) {
        if (imc < 18.5) {
            return "Bajo peso";
        } else if (imc < 25) {
            return "Peso normal";
        } else if (imc < 30) {
            return "Sobrepeso";
        } else {
            return "Obesidad";
        }
    }
    
    public static void mostrarResultado(double imc, String categoria) {
        System.out.println("\n=== RESULTADO IMC ===");
        System.out.printf("IMC: %.2f\n", imc);
        System.out.println("Categoría: " + categoria);
        
        if (imc >= 18.5 && imc < 25) {
            System.out.println("¡Felicidades! Tienes un peso saludable ✓");
        } else {
            System.out.println("Se recomienda consultar con un profesional de salud");
        }
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== CALCULADORA DE IMC ===");
        System.out.print("Ingrese su peso (kg): ");
        double peso = scanner.nextDouble();
        
        System.out.print("Ingrese su altura (m): ");
        double altura = scanner.nextDouble();
        
        if (peso > 0 && altura > 0) {
            double imc = calcularIMC(peso, altura);
            String categoria = obtenerCategoria(imc);
            mostrarResultado(imc, categoria);
        } else {
            System.out.println("Error: Los valores deben ser positivos");
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 4: VALIDADOR CONTRASEÑA -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-lock me-2"></i>ValidadorContrasena.java
                </h3>
                <p class="programa-description">
                    Programa que valida si una contraseña cumple con los requisitos de seguridad usando métodos booleanos.
                </p>
                <ul class="programa-features">
                    <li>tieneLongitudMinima() retorna boolean</li>
                    <li>tieneMayuscula() retorna boolean</li>
                    <li>tieneNumero() retorna boolean</li>
                    <li>esSegura() combina todas las validaciones</li>
                    <li>Muestra mensajes específicos de error</li>
                </ul>
                <div>
                    <a href="../semana3/codigo/ValidadorContrasena.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code4')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code4" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class ValidadorContrasena {
    
    public static boolean tieneLongitudMinima(String pass) {
        return pass.length() >= 8;
    }
    
    public static boolean tieneMayuscula(String pass) {
        for (char c : pass.toCharArray()) {
            if (Character.isUpperCase(c)) return true;
        }
        return false;
    }
    
    public static boolean tieneNumero(String pass) {
        for (char c : pass.toCharArray()) {
            if (Character.isDigit(c)) return true;
        }
        return false;
    }
    
    public static boolean esSegura(String pass) {
        return tieneLongitudMinima(pass) && 
               tieneMayuscula(pass) && 
               tieneNumero(pass);
    }
    
    public static void mostrarErrores(String pass) {
        System.out.println("\n--- VALIDACIÓN ---");
        
        if (!tieneLongitudMinima(pass)) {
            System.out.println("✗ Debe tener al menos 8 caracteres");
        } else {
            System.out.println("✓ Longitud correcta");
        }
        
        if (!tieneMayuscula(pass)) {
            System.out.println("✗ Debe tener al menos una mayúscula");
        } else {
            System.out.println("✓ Tiene mayúscula");
        }
        
        if (!tieneNumero(pass)) {
            System.out.println("✗ Debe tener al menos un número");
        } else {
            System.out.println("✓ Tiene número");
        }
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== VALIDADOR DE CONTRASEÑA ===");
        System.out.print("Ingrese contraseña: ");
        String password = scanner.nextLine();
        
        mostrarErrores(password);
        
        if (esSegura(password)) {
            System.out.println("\n✓ ¡Contraseña segura!");
        } else {
            System.out.println("\n✗ Contraseña no segura");
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 5: CONVERSOR MONEDA -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-coins me-2"></i>ConversorMoneda.java
                </h3>
                <p class="programa-description">
                    Conversor de monedas entre Soles, Dólares y Euros usando métodos con tasas de cambio.
                </p>
                <ul class="programa-features">
                    <li>solesADolares() con tasa de cambio</li>
                    <li>dolaresASoles() con retorno</li>
                    <li>solesAEuros() con retorno</li>
                    <li>eurosASoles() con retorno</li>
                    <li>Tasas de cambio actualizables</li>
                </ul>
                <div>
                    <a href="../semana3/codigo/ConversorMoneda.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code5')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code5" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class ConversorMoneda {
    
    // Tasas de cambio (ejemplo)
    static double tasaDolar = 3.75;
    static double tasaEuro = 4.10;
    
    public static double solesADolares(double soles) {
        return soles / tasaDolar;
    }
    
    public static double dolaresASoles(double dolares) {
        return dolares * tasaDolar;
    }
    
    public static double solesAEuros(double soles) {
        return soles / tasaEuro;
    }
    
    public static double eurosASoles(double euros) {
        return euros * tasaEuro;
    }
    
    public static void mostrarTasas() {
        System.out.println("\n--- TASAS DE CAMBIO ---");
        System.out.printf("1 USD = S/ %.2f\n", tasaDolar);
        System.out.printf("1 EUR = S/ %.2f\n", tasaEuro);
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== CONVERSOR DE MONEDA ===");
        mostrarTasas();
        
        System.out.print("\nIngrese monto en Soles: S/ ");
        double soles = scanner.nextDouble();
        
        System.out.println("\n--- CONVERSIONES ---");
        System.out.printf("S/ %.2f = $ %.2f USD\n", soles, solesADolares(soles));
        System.out.printf("S/ %.2f = € %.2f EUR\n", soles, solesAEuros(soles));
        
        System.out.print("\nIngrese monto en Dólares: $ ");
        double dolares = scanner.nextDouble();
        System.out.printf("$ %.2f = S/ %.2f\n", dolares, dolaresASoles(dolares));
        
        System.out.print("\nIngrese monto en Euros: € ");
        double euros = scanner.nextDouble();
        System.out.printf("€ %.2f = S/ %.2f\n", euros, eurosASoles(euros));
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 6: NÚMERO PRIMO -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-hashtag me-2"></i>NumeroPrimo.java
                </h3>
                <p class="programa-description">
                    Programa que determina si un número es primo usando un método booleano y muestra los primos en un rango.
                </p>
                <ul class="programa-features">
                    <li>esPrimo() retorna boolean</li>
                    <li>mostrarPrimosRango() void</li>
                    <li>Optimización con Math.sqrt()</li>
                    <li>Lista de primos en un rango dado</li>
                </ul>
                <div>
                    <a href="../semana3/codigo/NumeroPrimo.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code6')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code6" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class NumeroPrimo {
    
    public static boolean esPrimo(int numero) {
        if (numero <= 1) return false;
        if (numero == 2) return true;
        if (numero % 2 == 0) return false;
        
        for (int i = 3; i <= Math.sqrt(numero); i += 2) {
            if (numero % i == 0) {
                return false;
            }
        }
        return true;
    }
    
    public static void mostrarPrimosRango(int inicio, int fin) {
        System.out.println("\n--- NÚMEROS PRIMOS DEL " + inicio + " AL " + fin + " ---");
        int contador = 0;
        
        for (int i = inicio; i <= fin; i++) {
            if (esPrimo(i)) {
                System.out.print(i + " ");
                contador++;
                if (contador % 10 == 0) System.out.println();
            }
        }
        
        System.out.println("\n\nTotal de primos encontrados: " + contador);
    }
    
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== DETECTOR DE NÚMEROS PRIMOS ===");
        
        System.out.print("Ingrese un número: ");
        int numero = scanner.nextInt();
        
        if (esPrimo(numero)) {
            System.out.println(numero + " ES un número primo ✓");
        } else {
            System.out.println(numero + " NO es un número primo ");
        }
        
        System.out.print("\nRango inicio: ");
        int inicio = scanner.nextInt();
        System.out.print("Rango fin: ");
        int fin = scanner.nextInt();
        
        if (inicio > 0 && fin > inicio) {
            mostrarPrimosRango(inicio, fin);
        } else {
            System.out.println("Rango inválido");
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
            <h2 class="text-center fw-bold mb-5" style="font-family: 'Orbitron', sans-serif; color: #00f3ff; text-shadow: 0 0 20px #00f3ff;">
                <i class="fas fa-graduation-cap me-2"></i>Aprendizajes de la Semana
            </h2>
            
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-arrow-right" style="font-size: 3rem; color: #39ff14; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #39ff14;">Métodos Void</h5>
                        <p class="text-muted">Métodos que ejecutan acciones sin retornar valor (void).</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-undo" style="font-size: 3rem; color: #00f3ff; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #00f3ff;">Métodos con Retorno</h5>
                        <p class="text-muted">Métodos que devuelven un valor usando return.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-exchange-alt" style="font-size: 3rem; color: #bc13fe; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #bc13fe;">Parámetros</h5>
                        <p class="text-muted">Pasar datos a los métodos mediante argumentos.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-check-circle" style="font-size: 3rem; color: #ff006e; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #ff006e;">Booleanos</h5>
                        <p class="text-muted">Métodos que retornan true/false para validaciones.</p>
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
                    <a href="semana2.jsp" class="btn btn-outline-primary btn-lg w-100 py-3">
                        <i class="fas fa-arrow-left me-2"></i>Semana 2
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="../index.jsp" class="btn btn-outline-light btn-lg w-100 py-3">
                        <i class="fas fa-home me-2"></i>Inicio
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="semana4.jsp" class="btn btn-primary btn-lg w-100 py-3" style="background: linear-gradient(45deg, #39ff14, #00f3ff); border: none; color: #000;">
                        Semana 4<i class="fas fa-arrow-right ms-2"></i>
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
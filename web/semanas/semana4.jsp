<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Semana 4 - Estructuras Selectivas | Axel Caparo</title>
    
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
            --neon-orange: #ff6600;
            --neon-amber: #ffcc00;
            --neon-red: #ff3333;
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
            border: 2px solid var(--neon-orange);
            border-radius: 50%;
            pointer-events: none;
            z-index: 99999;
            transition: transform 0.1s ease;
            box-shadow: 0 0 10px var(--neon-orange), 0 0 20px var(--neon-orange);
        }
        
        .custom-cursor-dot {
            position: fixed;
            width: 6px;
            height: 6px;
            background: var(--neon-amber);
            border-radius: 50%;
            pointer-events: none;
            z-index: 99999;
            box-shadow: 0 0 10px var(--neon-amber);
        }
        
        /* HERO SEMANA */
        .hero-semana {
            min-height: 60vh;
            background: linear-gradient(135deg, #0a0a0f 0%, #1a1208 50%, #2a1a0a 100%);
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
                radial-gradient(circle at 20% 30%, rgba(255, 102, 0, 0.3) 0%, transparent 40%),
                radial-gradient(circle at 80% 70%, rgba(255, 204, 0, 0.3) 0%, transparent 40%);
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
            background: linear-gradient(45deg, #ff6600, #ffcc00, #ff3333);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-transform: uppercase;
            letter-spacing: 5px;
            text-shadow: 0 0 30px rgba(255, 102, 0, 0.5);
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
            background: linear-gradient(45deg, #ff6600, #ffcc00);
            border-radius: 50px;
            font-family: 'Orbitron', sans-serif;
            font-size: 1.2rem;
            font-weight: 700;
            color: #000;
            margin-bottom: 20px;
            box-shadow: 0 0 30px rgba(255, 102, 0, 0.5);
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }
        
        /* TARJETAS DE PROGRAMAS */
        .programa-card {
            background: var(--card-bg);
            border: 2px solid rgba(255, 102, 0, 0.3);
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
            background: linear-gradient(90deg, #ff6600, #ffcc00, #ff3333);
        }
        
        .programa-card:hover {
            transform: translateY(-10px);
            border-color: var(--neon-orange);
            box-shadow: 0 10px 40px rgba(255, 102, 0, 0.4);
        }
        
        .programa-title {
            font-family: 'Orbitron', sans-serif;
            font-size: 1.8rem;
            color: var(--neon-orange);
            margin-bottom: 15px;
            text-shadow: 0 0 10px rgba(255, 102, 0, 0.5);
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
            color: var(--neon-orange);
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
            border: 2px solid var(--neon-amber);
            color: var(--neon-amber);
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
            background: var(--neon-amber);
            color: #000;
            box-shadow: 0 0 20px rgba(255, 204, 0, 0.5);
            transform: translateY(-3px);
        }
        
        /* CÓDIGO FUENTE */
        .code-container {
            background: #0d1117;
            border: 2px solid rgba(255, 102, 0, 0.3);
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
            background: linear-gradient(45deg, #ff6600, #ffcc00);
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
            background: linear-gradient(135deg, rgba(255, 102, 0, 0.1), rgba(255, 204, 0, 0.1));
            border: 2px solid rgba(255, 102, 0, 0.3);
            border-radius: 15px;
            padding: 30px;
            margin-bottom: 40px;
        }
        
        .resumen-title {
            font-family: 'Orbitron', sans-serif;
            color: var(--neon-orange);
            font-size: 1.5rem;
            margin-bottom: 15px;
            text-shadow: 0 0 10px rgba(255, 102, 0, 0.5);
        }
        
        /* NAVIGATION */
        .nav-semanas {
            background: rgba(10, 10, 15, 0.95);
            backdrop-filter: blur(10px);
            border-bottom: 2px solid var(--neon-orange);
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
            color: var(--neon-orange) !important;
            text-shadow: 0 0 10px var(--neon-orange);
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
            border-top: 2px solid var(--neon-orange);
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
            background: linear-gradient(var(--neon-orange), var(--neon-amber));
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
            <a class="navbar-brand fw-bold" href="../index.jsp" style="color: var(--neon-orange); font-family: 'Orbitron', sans-serif; text-shadow: 0 0 10px var(--neon-orange);">
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

    <!-- HERO SEMANA 4 -->
    <section class="hero-semana">
        <div class="container text-center">
            <div class="semana-badge">
                <i class="fas fa-code-branch me-2"></i> SEMANA 4
            </div>
            <h1 class="semana-title mb-4">Estructuras Selectivas</h1>
            <p class="lead mb-4" style="font-size: 1.5rem; color: #aaa;">
                <i class="fas fa-random me-2"></i> Toma de Decisiones con if-else y switch
            </p>
            <div class="mt-4">
                <a href="#programas" class="btn btn-primary btn-lg rounded-pill px-5 py-3 me-3" style="background: linear-gradient(45deg, #ff6600, #ffcc00); border: none; color: #000;">
                    <i class="fas fa-code me-2"></i> Ver Programas
                </a>
                <a href="../semana4/codigo/" class="btn btn-outline-light btn-lg rounded-pill px-5 py-3" download>
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
                    En esta cuarta semana, dominamos las <strong style="color: #ff6600;">estructuras de control selectivas</strong>. 
                    Aprendimos a usar <strong style="color: #ffcc00;">if, else if, else</strong> para evaluar múltiples condiciones, 
                    y la estructura <strong style="color: #ff3333;">switch-case</strong> para decisiones basadas en valores discretos. 
                    Aplicamos estos conceptos en clasificadores, menús interactivos y validadores, fortaleciendo la lógica condicional.
                </p>
                <div class="row mt-4">
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #ff6600; font-family: 'Orbitron', sans-serif;">6</div>
                        <p class="text-muted">Programas</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #ffcc00; font-family: 'Orbitron', sans-serif;">100%</div>
                        <p class="text-muted">Completado</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #ff3333; font-family: 'Orbitron', sans-serif;">Inter</div>
                        <p class="text-muted">Nivel</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #00f3ff; font-family: 'Orbitron', sans-serif;">if/switch</div>
                        <p class="text-muted">Enfoque</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- PROGRAMAS -->
    <section id="programas" class="py-5">
        <div class="container">
            <h2 class="text-center fw-bold mb-5" style="font-family: 'Orbitron', sans-serif; color: #ff6600; text-shadow: 0 0 20px #ff6600;">
                <i class="fas fa-code me-2"></i>Programas Desarrollados
            </h2>

            <!-- PROGRAMA 1: MAYOR DE TRES -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-sort-amount-up me-2"></i>MayorDeTres.java
                </h3>
                <p class="programa-description">
                    Determina cuál de tres números ingresados es el mayor utilizando estructuras if-else anidadas.
                </p>
                <ul class="programa-features">
                    <li>Entrada de 3 números enteros</li>
                    <li>Comparación con if-else if-else</li>
                    <li>Manejo de casos iguales</li>
                    <li>Salida clara del resultado</li>
                </ul>
                <div>
                    <a href="../semana4/codigo/MayorDeTres.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code1')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code1" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class MayorDeTres {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== MAYOR DE TRES NÚMEROS ===");
        System.out.print("Ingrese primer número: ");
        int n1 = scanner.nextInt();
        System.out.print("Ingrese segundo número: ");
        int n2 = scanner.nextInt();
        System.out.print("Ingrese tercer número: ");
        int n3 = scanner.nextInt();
        
        if (n1 >= n2 && n1 >= n3) {
            System.out.println("El mayor es: " + n1);
        } else if (n2 >= n1 && n2 >= n3) {
            System.out.println("El mayor es: " + n2);
        } else {
            System.out.println("El mayor es: " + n3);
        }
        
        if (n1 == n2 && n2 == n3) {
            System.out.println("Nota: Los tres números son iguales");
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 2: CLASIFICACIÓN NOTAS -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-graduation-cap me-2"></i>ClasificacionNotas.java
                </h3>
                <p class="programa-description">
                    Clasifica una nota numérica en letras (A, B, C, D, F) usando if-else if encadenados.
                </p>
                <ul class="programa-features">
                    <li>Validación de rango 0-100</li>
                    <li>Escala: A(90-100), B(80-89), C(70-79), D(60-69), F(<60)</li>
                    <li>Mensajes personalizados por categoría</li>
                    <li>Manejo de entradas inválidas</li>
                </ul>
                <div>
                    <a href="../semana4/codigo/ClasificacionNotas.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code2')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code2" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class ClasificacionNotas {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== CLASIFICACIÓN DE NOTAS ===");
        System.out.print("Ingrese nota (0-100): ");
        int nota = scanner.nextInt();
        
        if (nota < 0 || nota > 100) {
            System.out.println("Error: La nota debe estar entre 0 y 100");
        } else {
            char letra;
            String mensaje;
            
            if (nota >= 90) {
                letra = 'A';
                mensaje = "¡Excelente trabajo!";
            } else if (nota >= 80) {
                letra = 'B';
                mensaje = "Muy buen desempeño";
            } else if (nota >= 70) {
                letra = 'C';
                mensaje = "Buen trabajo";
            } else if (nota >= 60) {
                letra = 'D';
                mensaje = "Necesita mejorar";
            } else {
                letra = 'F';
                mensaje = "Desaprobado";
            }
            
            System.out.println("\n--- RESULTADO ---");
            System.out.printf("Nota numérica: %d\n", nota);
            System.out.printf("Nota letra: %c\n", letra);
            System.out.println("Observación: " + mensaje);
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 3: CALCULADORA SWITCH -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-calculator me-2"></i>CalculadoraSwitch.java
                </h3>
                <p class="programa-description">
                    Implementación de una calculadora básica utilizando la estructura switch-case para seleccionar operaciones.
                </p>
                <ul class="programa-features">
                    <li>Menú con opciones 1-5</li>
                    <li>Switch para +, -, *, /</li>
                    <li>Case default para opción inválida</li>
                    <li>Break en cada case</li>
                </ul>
                <div>
                    <a href="../semana4/codigo/CalculadoraSwitch.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code3')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code3" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class CalculadoraSwitch {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== CALCULADORA SWITCH ===");
        System.out.print("Ingrese primer número: ");
        double n1 = scanner.nextDouble();
        
        System.out.print("Ingrese segundo número: ");
        double n2 = scanner.nextDouble();
        
        System.out.println("\nSeleccione operación:");
        System.out.println("1. Sumar (+)");
        System.out.println("2. Restar (-)");
        System.out.println("3. Multiplicar (*)");
        System.out.println("4. Dividir (/)");
        System.out.print("Opción: ");
        int opcion = scanner.nextInt();
        
        double resultado = 0;
        boolean valido = true;
        
        switch(opcion) {
            case 1:
                resultado = n1 + n2;
                System.out.println("Operación: Suma");
                break;
            case 2:
                resultado = n1 - n2;
                System.out.println("Operación: Resta");
                break;
            case 3:
                resultado = n1 * n2;
                System.out.println("Operación: Multiplicación");
                break;
            case 4:
                if (n2 != 0) {
                    resultado = n1 / n2;
                    System.out.println("Operación: División");
                } else {
                    System.out.println("Error: No se puede dividir por cero");
                    valido = false;
                }
                break;
            default:
                System.out.println("Opción inválida");
                valido = false;
        }
        
        if (valido) {
            System.out.printf("Resultado: %.2f\n", resultado);
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 4: DÍA SEMANA SWITCH -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-calendar-day me-2"></i>DiaSemanaSwitch.java
                </h3>
                <p class="programa-description">
                    Muestra el nombre del día de la semana correspondiente a un número (1-7) usando switch-case.
                </p>
                <ul class="programa-features">
                    <li>Entrada numérica 1-7</li>
                    <li>Switch con 7 cases + default</li>
                    <li>Identifica días laborales vs fin de semana</li>
                    <li>Validación de rango</li>
                </ul>
                <div>
                    <a href="../semana4/codigo/DiaSemanaSwitch.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code4')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code4" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class DiaSemanaSwitch {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== DÍA DE LA SEMANA ===");
        System.out.print("Ingrese número (1-7): ");
        int dia = scanner.nextInt();
        
        if (dia < 1 || dia > 7) {
            System.out.println("Error: Número fuera de rango");
        } else {
            String nombreDia;
            String tipo;
            
            switch(dia) {
                case 1: nombreDia = "Lunes"; tipo = "Laboral"; break;
                case 2: nombreDia = "Martes"; tipo = "Laboral"; break;
                case 3: nombreDia = "Miércoles"; tipo = "Laboral"; break;
                case 4: nombreDia = "Jueves"; tipo = "Laboral"; break;
                case 5: nombreDia = "Viernes"; tipo = "Laboral"; break;
                case 6: nombreDia = "Sábado"; tipo = "Fin de semana"; break;
                case 7: nombreDia = "Domingo"; tipo = "Fin de semana"; break;
                default: nombreDia = "Desconocido"; tipo = "";
            }
            
            System.out.println("\n--- RESULTADO ---");
            System.out.printf("Día %d corresponde a: %s\n", dia, nombreDia);
            System.out.println("Tipo: " + tipo);
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 5: DESCUENTO POR CATEGORÍA -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-tags me-2"></i>DescuentoCategoria.java
                </h3>
                <p class="programa-description">
                    Aplica descuentos según la categoría de cliente (A, B, C) usando switch y calcula el total a pagar.
                </p>
                <ul class="programa-features">
                    <li>Categoría A: 15% descuento</li>
                    <li>Categoría B: 10% descuento</li>
                    <li>Categoría C: 5% descuento</li>
                    <li>Switch con caracteres</li>
                </ul>
                <div>
                    <a href="../semana4/codigo/DescuentoCategoria.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code5')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code5" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class DescuentoCategoria {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== DESCUENTO POR CATEGORÍA ===");
        System.out.print("Ingrese monto de compra: S/ ");
        double monto = scanner.nextDouble();
        
        System.out.print("Ingrese categoría (A, B, C): ");
        char categoria = scanner.next().toUpperCase().charAt(0);
        
        double descuento = 0;
        double porcentaje = 0;
        
        switch(categoria) {
            case 'A':
                porcentaje = 15;
                descuento = monto * 0.15;
                break;
            case 'B':
                porcentaje = 10;
                descuento = monto * 0.10;
                break;
            case 'C':
                porcentaje = 5;
                descuento = monto * 0.05;
                break;
            default:
                System.out.println("Categoría no válida");
                scanner.close();
                return;
        }
        
        double total = monto - descuento;
        
        System.out.println("\n--- BOLETA ---");
        System.out.printf("Monto original: S/ %.2f\n", monto);
        System.out.printf("Categoría: %c (%.0f%% descuento)\n", categoria, porcentaje);
        System.out.printf("Descuento aplicado: -S/ %.2f\n", descuento);
        System.out.printf("TOTAL A PAGAR: S/ %.2f\n", total);
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 6: PAR IMPAR POS NEG -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-balance-scale me-2"></i>ClasificadorNumeros.java
                </h3>
                <p class="programa-description">
                    Clasifica un número como positivo/negativo y par/impar combinando múltiples condiciones if.
                </p>
                <ul class="programa-features">
                    <li>Verifica si es positivo, negativo o cero</li>
                    <li>Verifica si es par o impar</li>
                    <li>Combina ambas clasificaciones</li>
                    <li>Operador módulo (%)</li>
                </ul>
                <div>
                    <a href="../semana4/codigo/ClasificadorNumeros.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code6')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code6" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class ClasificadorNumeros {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== CLASIFICADOR DE NÚMEROS ===");
        System.out.print("Ingrese un número entero: ");
        int numero = scanner.nextInt();
        
        System.out.println("\n--- CLASIFICACIÓN ---");
        
        // Clasificación por signo
        if (numero > 0) {
            System.out.print("Positivo");
        } else if (numero < 0) {
            System.out.print("Negativo");
        } else {
            System.out.print("Cero");
        }
        
        System.out.print(" y ");
        
        // Clasificación par/impar
        if (numero % 2 == 0) {
            System.out.println("Par");
        } else {
            System.out.println("Impar");
        }
        
        // Información adicional
        if (numero > 100) {
            System.out.println("Es un número mayor a 100");
        } else if (numero < -100) {
            System.out.println("Es un número menor a -100");
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
            <h2 class="text-center fw-bold mb-5" style="font-family: 'Orbitron', sans-serif; color: #ffcc00; text-shadow: 0 0 20px #ffcc00;">
                <i class="fas fa-graduation-cap me-2"></i>Aprendizajes de la Semana
            </h2>
            
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-code-branch" style="font-size: 3rem; color: #ff6600; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #ff6600;">If-Else</h5>
                        <p class="text-muted">Evaluación de condiciones booleanas y ramificación de flujo.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-layer-group" style="font-size: 3rem; color: #ffcc00; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #ffcc00;">Else-If</h5>
                        <p class="text-muted">Cadenas de condiciones múltiples evaluadas en orden.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-exchange-alt" style="font-size: 3rem; color: #ff3333; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #ff3333;">Switch-Case</h5>
                        <p class="text-muted">Selección múltiple basada en valores discretos.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-box" style="font-size: 3rem; color: #00f3ff; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #00f3ff;">Break/Default</h5>
                        <p class="text-muted">Control de salida y manejo de casos no contemplados.</p>
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
                    <a href="semana3.jsp" class="btn btn-outline-primary btn-lg w-100 py-3">
                        <i class="fas fa-arrow-left me-2"></i>Semana 3
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="../index.jsp" class="btn btn-outline-light btn-lg w-100 py-3">
                        <i class="fas fa-home me-2"></i>Inicio
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="semana5.jsp" class="btn btn-primary btn-lg w-100 py-3" style="background: linear-gradient(45deg, #ff6600, #ffcc00); border: none; color: #000;">
                        Semana 5<i class="fas fa-arrow-right ms-2"></i>
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
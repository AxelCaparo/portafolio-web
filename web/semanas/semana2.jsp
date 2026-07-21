<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Semana 2 - Operaciones y Porcentajes | Axel Caparo</title>
    
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
                radial-gradient(circle at 20% 30%, rgba(188, 19, 254, 0.3) 0%, transparent 40%),
                radial-gradient(circle at 80% 70%, rgba(255, 0, 110, 0.3) 0%, transparent 40%);
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
            background: linear-gradient(45deg, #bc13fe, #ff006e, #00f3ff);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-transform: uppercase;
            letter-spacing: 5px;
            text-shadow: 0 0 30px rgba(188, 19, 254, 0.5);
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
            background: linear-gradient(45deg, #bc13fe, #ff006e);
            border-radius: 50px;
            font-family: 'Orbitron', sans-serif;
            font-size: 1.2rem;
            font-weight: 700;
            color: #fff;
            margin-bottom: 20px;
            box-shadow: 0 0 30px rgba(188, 19, 254, 0.5);
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }
        
        /* TARJETAS DE PROGRAMAS */
        .programa-card {
            background: var(--card-bg);
            border: 2px solid rgba(188, 19, 254, 0.3);
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
            background: linear-gradient(90deg, #bc13fe, #ff006e, #00f3ff);
        }
        
        .programa-card:hover {
            transform: translateY(-10px);
            border-color: #bc13fe;
            box-shadow: 0 10px 40px rgba(188, 19, 254, 0.4);
        }
        
        .programa-title {
            font-family: 'Orbitron', sans-serif;
            font-size: 1.8rem;
            color: #bc13fe;
            margin-bottom: 15px;
            text-shadow: 0 0 10px rgba(188, 19, 254, 0.5);
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
            color: #bc13fe;
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
            border: 2px solid #ff006e;
            color: #ff006e;
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
            background: #ff006e;
            color: #fff;
            box-shadow: 0 0 20px rgba(255, 0, 110, 0.5);
            transform: translateY(-3px);
        }
        
        /* CÓDIGO FUENTE */
        .code-container {
            background: #0d1117;
            border: 2px solid rgba(188, 19, 254, 0.3);
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
            background: linear-gradient(45deg, #bc13fe, #ff006e);
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
            background: linear-gradient(135deg, rgba(188, 19, 254, 0.1), rgba(255, 0, 110, 0.1));
            border: 2px solid rgba(188, 19, 254, 0.3);
            border-radius: 15px;
            padding: 30px;
            margin-bottom: 40px;
        }
        
        .resumen-title {
            font-family: 'Orbitron', sans-serif;
            color: #bc13fe;
            font-size: 1.5rem;
            margin-bottom: 15px;
            text-shadow: 0 0 10px rgba(188, 19, 254, 0.5);
        }
        
        /* NAVIGATION */
        .nav-semanas {
            background: rgba(10, 10, 15, 0.95);
            backdrop-filter: blur(10px);
            border-bottom: 2px solid var(--neon-purple);
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
            color: var(--neon-purple) !important;
            text-shadow: 0 0 10px var(--neon-purple);
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
            border-top: 2px solid var(--neon-purple);
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
            background: linear-gradient(#bc13fe, #ff006e);
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
            <a class="navbar-brand fw-bold" href="../index.jsp" style="color: #bc13fe; font-family: 'Orbitron', sans-serif; text-shadow: 0 0 10px #bc13fe;">
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

    <!-- HERO SEMANA 2 -->
    <section class="hero-semana">
        <div class="container text-center">
            <div class="semana-badge">
                <i class="fas fa-calculator me-2"></i> SEMANA 2
            </div>
            <h1 class="semana-title mb-4">Operaciones y Porcentajes</h1>
            <p class="lead mb-4" style="font-size: 1.5rem; color: #aaa;">
                <i class="fas fa-percentage me-2"></i> Cálculos de Sueldos y Descuentos
            </p>
            <div class="mt-4">
                <a href="#programas" class="btn btn-primary btn-lg rounded-pill px-5 py-3 me-3" style="background: linear-gradient(45deg, #bc13fe, #ff006e); border: none;">
                    <i class="fas fa-code me-2"></i> Ver Programas
                </a>
                <a href="../semana2/codigo/" class="btn btn-outline-light btn-lg rounded-pill px-5 py-3" download>
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
                    En esta segunda semana, profundizamos en el uso de <strong style="color: #bc13fe;">operadores aritméticos</strong> 
                    y aplicamos <strong style="color: #ff006e;">porcentajes</strong> en casos de la vida real. Desarrollamos 
                    programas para calcular sueldos con horas extras, descuentos en compras, promedios ponderados y 
                    cálculos de inversión, fortaleciendo nuestra lógica de programación.
                </p>
                <div class="row mt-4">
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #bc13fe; font-family: 'Orbitron', sans-serif;">5</div>
                        <p class="text-muted">Programas</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #ff006e; font-family: 'Orbitron', sans-serif;">100%</div>
                        <p class="text-muted">Completado</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #00f3ff; font-family: 'Orbitron', sans-serif;">Básico+</div>
                        <p class="text-muted">Nivel</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #39ff14; font-family: 'Orbitron', sans-serif;">%</div>
                        <p class="text-muted">Enfoque</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- PROGRAMAS -->
    <section id="programas" class="py-5">
        <div class="container">
            <h2 class="text-center fw-bold mb-5" style="font-family: 'Orbitron', sans-serif; color: #bc13fe; text-shadow: 0 0 20px #bc13fe;">
                <i class="fas fa-code me-2"></i>Programas Desarrollados
            </h2>

            <!-- PROGRAMA 1: SUELDO EMPLEADO -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-money-bill-wave me-2"></i>SueldoEmpleado.java
                </h3>
                <p class="programa-description">
                    Programa que calcula el sueldo de un empleado considerando horas extras, bonificaciones y descuentos de ley.
                </p>
                <ul class="programa-features">
                    <li>Cálculo de horas extras (50% más)</li>
                    <li>Bonificación familiar (10% del sueldo base)</li>
                    <li>Descuento de AFP (8%)</li>
                    <li>Sueldo neto final</li>
                </ul>
                <div>
                    <a href="../semana2/codigo/SueldoEmpleado.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code1')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code1" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class SueldoEmpleado {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== CÁLCULO DE SUELDO EMPLEADO ===");
        System.out.print("Ingrese horas trabajadas: ");
        int horas = scanner.nextInt();
        
        System.out.print("Ingrese pago por hora: S/ ");
        double pagoHora = scanner.nextDouble();
        
        // Cálculos
        double sueldoBase = horas * pagoHora;
        double horasExtras = 0;
        
        if (horas > 40) {
            horasExtras = (horas - 40) * pagoHora * 1.5;
        }
        
        double bonificacion = sueldoBase * 0.10;
        double sueldoBruto = sueldoBase + horasExtras + bonificacion;
        double descuentoAFP = sueldoBruto * 0.08;
        double sueldoNeto = sueldoBruto - descuentoAFP;
        
        System.out.println("\n--- BOLETA DE PAGO ---");
        System.out.printf("Sueldo Base: S/ %.2f\n", sueldoBase);
        System.out.printf("Horas Extras: S/ %.2f\n", horasExtras);
        System.out.printf("Bonificación (10%%): S/ %.2f\n", bonificacion);
        System.out.printf("Sueldo Bruto: S/ %.2f\n", sueldoBruto);
        System.out.printf("Descuento AFP (8%%): -S/ %.2f\n", descuentoAFP);
        System.out.printf("SUELDO NETO: S/ %.2f\n", sueldoNeto);
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 2: COMPRA CAMISAS -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-tshirt me-2"></i>CompraCamisas.java
                </h3>
                <p class="programa-description">
                    Programa que calcula el total de una compra de camisas aplicando descuentos según la cantidad comprada.
                </p>
                <ul class="programa-features">
                    <li>3+ camisas: 20% de descuento</li>
                    <li>2 camisas: 10% de descuento</li>
                    <li>1 camisa: sin descuento</li>
                    <li>Cálculo de total a pagar</li>
                </ul>
                <div>
                    <a href="../semana2/codigo/CompraCamisas.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code2')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code2" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class CompraCamisas {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== TIENDA DE CAMISAS ===");
        System.out.print("Ingrese cantidad de camisas: ");
        int cantidad = scanner.nextInt();
        
        System.out.print("Ingrese precio unitario: S/ ");
        double precio = scanner.nextDouble();
        
        double totalCompra = cantidad * precio;
        double descuento = 0;
        double porcentajeDesc = 0;
        
        if (cantidad >= 3) {
            porcentajeDesc = 20;
            descuento = totalCompra * 0.20;
        } else if (cantidad == 2) {
            porcentajeDesc = 10;
            descuento = totalCompra * 0.10;
        }
        
        double totalPagar = totalCompra - descuento;
        
        System.out.println("\n--- BOLETA DE VENTA ---");
        System.out.printf("Cantidad: %d camisas\n", cantidad);
        System.out.printf("Precio unitario: S/ %.2f\n", precio);
        System.out.printf("Total compra: S/ %.2f\n", totalCompra);
        System.out.printf("Descuento (%.0f%%): -S/ %.2f\n", porcentajeDesc, descuento);
        System.out.printf("TOTAL A PAGAR: S/ %.2f\n", totalPagar);
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 3: DESCUENTO PASAJES -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-bus me-2"></i>DescuentoPasajes.java
                </h3>
                <p class="programa-description">
                    Programa que calcula el precio de un pasaje de bus aplicando descuentos según la edad del pasajero.
                </p>
                <ul class="programa-features">
                    <li>Niños (menores de 12): 50% descuento</li>
                    <li>Adultos mayores (60+): 30% descuento</li>
                    <li>Estudiantes con carnet: 20% descuento</li>
                    <li>Precio base del pasaje</li>
                </ul>
                <div>
                    <a href="../semana2/codigo/DescuentoPasajes.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code3')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code3" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class DescuentoPasajes {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== EMPRESA DE TRANSPORTES ===");
        System.out.print("Precio base del pasaje: S/ ");
        double precioBase = scanner.nextDouble();
        
        System.out.print("Edad del pasajero: ");
        int edad = scanner.nextInt();
        
        System.out.print("¿Tiene carnet estudiante? (1=Si, 0=No): ");
        int estudiante = scanner.nextInt();
        
        double descuento = 0;
        String tipoDescuento = "Sin descuento";
        
        if (edad < 12) {
            descuento = precioBase * 0.50;
            tipoDescuento = "Niño (50%)";
        } else if (edad >= 60) {
            descuento = precioBase * 0.30;
            tipoDescuento = "Adulto Mayor (30%)";
        } else if (estudiante == 1) {
            descuento = precioBase * 0.20;
            tipoDescuento = "Estudiante (20%)";
        }
        
        double precioFinal = precioBase - descuento;
        
        System.out.println("\n--- BOLETO DE VIAJE ---");
        System.out.printf("Precio base: S/ %.2f\n", precioBase);
        System.out.printf("Edad: %d años\n", edad);
        System.out.printf("Tipo descuento: %s\n", tipoDescuento);
        System.out.printf("Descuento aplicado: -S/ %.2f\n", descuento);
        System.out.printf("PRECIO FINAL: S/ %.2f\n", precioFinal);
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 4: PROMEDIO FINAL -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-graduation-cap me-2"></i>PromedioFinal.java
                </h3>
                <p class="programa-description">
                    Programa que calcula el promedio ponderado de un estudiante considerando los pesos de cada evaluación.
                </p>
                <ul class="programa-features">
                    <li>Examen parcial: 30%</li>
                    <li>Examen final: 40%</li>
                    <li>Trabajo final: 30%</li>
                    <li>Determina si aprobó o desaprobó</li>
                </ul>
                <div>
                    <a href="../semana2/codigo/PromedioFinal.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code4')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code4" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class PromedioFinal {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== CÁLCULO DE PROMEDIO FINAL ===");
        
        System.out.print("Nota Examen Parcial (30%): ");
        double parcial = scanner.nextDouble();
        
        System.out.print("Nota Examen Final (40%): ");
        double final_ = scanner.nextDouble();
        
        System.out.print("Nota Trabajo Final (30%): ");
        double trabajo = scanner.nextDouble();
        
        // Validación de notas
        if (parcial < 0 || parcial > 20 || final_ < 0 || final_ > 20 || trabajo < 0 || trabajo > 20) {
            System.out.println("Error: Las notas deben estar entre 0 y 20");
        } else {
            double promedio = (parcial * 0.30) + (final_ * 0.40) + (trabajo * 0.30);
            
            System.out.println("\n--- REPORTE DE NOTAS ---");
            System.out.printf("Examen Parcial (30%%): %.2f\n", parcial);
            System.out.printf("Examen Final (40%%): %.2f\n", final_);
            System.out.printf("Trabajo Final (30%%): %.2f\n", trabajo);
            System.out.printf("\nPROMEDIO FINAL: %.2f\n", promedio);
            
            if (promedio >= 11) {
                System.out.println("ESTADO: APROBADO ✓");
            } else {
                System.out.println("ESTADO: DESAPROBADO ✗");
            }
        }
        
        scanner.close();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 5: INVERSIÓN FERIA -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-chart-line me-2"></i>InversionFeria.java
                </h3>
                <p class="programa-description">
                    Programa que calcula las ganancias de una inversión en una feria, distribuyendo el capital entre tres socios.
                </p>
                <ul class="programa-features">
                    <li>Inversión inicial de 3 socios</li>
                    <li>Cálculo de porcentaje de cada socio</li>
                    <li>Distribución de ganancias proporcional</li>
                    <li>Total ganado por cada uno</li>
                </ul>
                <div>
                    <a href="../semana2/codigo/InversionFeria.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code5')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code5" class="code-container" style="display: none;">
                    <pre><code>import java.util.Scanner;

public class InversionFeria {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        
        System.out.println("=== INVERSIÓN EN FERIA ===");
        
        System.out.print("Inversión Socio 1: S/ ");
        double inv1 = scanner.nextDouble();
        
        System.out.print("Inversión Socio 2: S/ ");
        double inv2 = scanner.nextDouble();
        
        System.out.print("Inversión Socio 3: S/ ");
        double inv3 = scanner.nextDouble();
        
        System.out.print("Ganancia total obtenida: S/ ");
        double ganancia = scanner.nextDouble();
        
        // Cálculos
        double totalInvertido = inv1 + inv2 + inv3;
        
        double porcentaje1 = (inv1 / totalInvertido) * 100;
        double porcentaje2 = (inv2 / totalInvertido) * 100;
        double porcentaje3 = (inv3 / totalInvertido) * 100;
        
        double ganancia1 = ganancia * (inv1 / totalInvertido);
        double ganancia2 = ganancia * (inv2 / totalInvertido);
        double ganancia3 = ganancia * (inv3 / totalInvertido);
        
        System.out.println("\n--- REPORTE DE INVERSIÓN ---");
        System.out.printf("Total invertido: S/ %.2f\n", totalInvertido);
        System.out.printf("Ganancia obtenida: S/ %.2f\n", ganancia);
        
        System.out.println("\nSOCIO 1:");
        System.out.printf("  Inversión: S/ %.2f (%.2f%%)\n", inv1, porcentaje1);
        System.out.printf("  Ganancia: S/ %.2f\n", ganancia1);
        System.out.printf("  Total recibido: S/ %.2f\n", inv1 + ganancia1);
        
        System.out.println("\nSOCIO 2:");
        System.out.printf("  Inversión: S/ %.2f (%.2f%%)\n", inv2, porcentaje2);
        System.out.printf("  Ganancia: S/ %.2f\n", ganancia2);
        System.out.printf("  Total recibido: S/ %.2f\n", inv2 + ganancia2);
        
        System.out.println("\nSOCIO 3:");
        System.out.printf("  Inversión: S/ %.2f (%.2f%%)\n", inv3, porcentaje3);
        System.out.printf("  Ganancia: S/ %.2f\n", ganancia3);
        System.out.printf("  Total recibido: S/ %.2f\n", inv3 + ganancia3);
        
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
            <h2 class="text-center fw-bold mb-5" style="font-family: 'Orbitron', sans-serif; color: #ff006e; text-shadow: 0 0 20px #ff006e;">
                <i class="fas fa-graduation-cap me-2"></i>Aprendizajes de la Semana
            </h2>
            
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-percent" style="font-size: 3rem; color: #bc13fe; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #bc13fe;">Porcentajes</h5>
                        <p class="text-muted">Cálculo de descuentos, aumentos y distribuciones proporcionales.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-money-check-alt" style="font-size: 3rem; color: #ff006e; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #ff006e;">Sueldos</h5>
                        <p class="text-muted">Cálculo de sueldos con horas extras, bonos y descuentos.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-shopping-cart" style="font-size: 3rem; color: #00f3ff; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #00f3ff;">Ventas</h5>
                        <p class="text-muted">Aplicación de descuentos según cantidad de productos.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-chart-pie" style="font-size: 3rem; color: #39ff14; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #39ff14;">Proporciones</h5>
                        <p class="text-muted">Distribución de ganancias según inversión.</p>
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
                    <a href="semana1.jsp" class="btn btn-outline-primary btn-lg w-100 py-3">
                        <i class="fas fa-arrow-left me-2"></i>Semana 1
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="../index.jsp" class="btn btn-outline-light btn-lg w-100 py-3">
                        <i class="fas fa-home me-2"></i>Inicio
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="semana3.jsp" class="btn btn-primary btn-lg w-100 py-3" style="background: linear-gradient(45deg, #bc13fe, #ff006e); border: none;">
                        Semana 3<i class="fas fa-arrow-right ms-2"></i>
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
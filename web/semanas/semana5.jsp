<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Semana 5 - Programación Orientada a Objetos | Axel Caparo</title>
    
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
            --neon-pink: #ff006e;
            --neon-magenta: #ff1493;
            --neon-cyan: #00f3ff;
            --neon-purple: #bc13fe;
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
            border: 2px solid var(--neon-pink);
            border-radius: 50%;
            pointer-events: none;
            z-index: 99999;
            transition: transform 0.1s ease;
            box-shadow: 0 0 10px var(--neon-pink), 0 0 20px var(--neon-pink);
        }
        
        .custom-cursor-dot {
            position: fixed;
            width: 6px;
            height: 6px;
            background: var(--neon-magenta);
            border-radius: 50%;
            pointer-events: none;
            z-index: 99999;
            box-shadow: 0 0 10px var(--neon-magenta);
        }
        
        /* HERO SEMANA */
        .hero-semana {
            min-height: 60vh;
            background: linear-gradient(135deg, #0a0a0f 0%, #1a0a15 50%, #2a0a20 100%);
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
                radial-gradient(circle at 20% 30%, rgba(255, 0, 110, 0.3) 0%, transparent 40%),
                radial-gradient(circle at 80% 70%, rgba(255, 20, 147, 0.3) 0%, transparent 40%);
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
            background: linear-gradient(45deg, #ff006e, #ff1493, #bc13fe);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-transform: uppercase;
            letter-spacing: 5px;
            text-shadow: 0 0 30px rgba(255, 0, 110, 0.5);
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
            background: linear-gradient(45deg, #ff006e, #ff1493);
            border-radius: 50px;
            font-family: 'Orbitron', sans-serif;
            font-size: 1.2rem;
            font-weight: 700;
            color: #fff;
            margin-bottom: 20px;
            box-shadow: 0 0 30px rgba(255, 0, 110, 0.5);
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.05); }
        }
        
        /* TARJETAS DE PROGRAMAS */
        .programa-card {
            background: var(--card-bg);
            border: 2px solid rgba(255, 0, 110, 0.3);
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
            background: linear-gradient(90deg, #ff006e, #ff1493, #bc13fe);
        }
        
        .programa-card:hover {
            transform: translateY(-10px);
            border-color: var(--neon-pink);
            box-shadow: 0 10px 40px rgba(255, 0, 110, 0.4);
        }
        
        .programa-title {
            font-family: 'Orbitron', sans-serif;
            font-size: 1.8rem;
            color: var(--neon-pink);
            margin-bottom: 15px;
            text-shadow: 0 0 10px rgba(255, 0, 110, 0.5);
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
            color: var(--neon-pink);
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
            border: 2px solid var(--neon-magenta);
            color: var(--neon-magenta);
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
            background: var(--neon-magenta);
            color: #fff;
            box-shadow: 0 0 20px rgba(255, 20, 147, 0.5);
            transform: translateY(-3px);
        }
        
        /* CÓDIGO FUENTE */
        .code-container {
            background: #0d1117;
            border: 2px solid rgba(255, 0, 110, 0.3);
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
            background: linear-gradient(45deg, #ff006e, #ff1493);
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
            background: linear-gradient(135deg, rgba(255, 0, 110, 0.1), rgba(255, 20, 147, 0.1));
            border: 2px solid rgba(255, 0, 110, 0.3);
            border-radius: 15px;
            padding: 30px;
            margin-bottom: 40px;
        }
        
        .resumen-title {
            font-family: 'Orbitron', sans-serif;
            color: var(--neon-pink);
            font-size: 1.5rem;
            margin-bottom: 15px;
            text-shadow: 0 0 10px rgba(255, 0, 110, 0.5);
        }
        
        /* NAVIGATION */
        .nav-semanas {
            background: rgba(10, 10, 15, 0.95);
            backdrop-filter: blur(10px);
            border-bottom: 2px solid var(--neon-pink);
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
            color: var(--neon-pink) !important;
            text-shadow: 0 0 10px var(--neon-pink);
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
            border-top: 2px solid var(--neon-pink);
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
            background: linear-gradient(var(--neon-pink), var(--neon-magenta));
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
            <a class="navbar-brand fw-bold" href="../index.jsp" style="color: var(--neon-pink); font-family: 'Orbitron', sans-serif; text-shadow: 0 0 10px var(--neon-pink);">
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

    <!-- HERO SEMANA 5 -->
    <section class="hero-semana">
        <div class="container text-center">
            <div class="semana-badge">
                <i class="fas fa-cubes me-2"></i> SEMANA 5
            </div>
            <h1 class="semana-title mb-4">Programación Orientada a Objetos</h1>
            <p class="lead mb-4" style="font-size: 1.5rem; color: #aaa;">
                <i class="fas fa-object-group me-2"></i> Clases, Objetos y Encapsulamiento
            </p>
            <div class="mt-4">
                <a href="#programas" class="btn btn-primary btn-lg rounded-pill px-5 py-3 me-3" style="background: linear-gradient(45deg, #ff006e, #ff1493); border: none;">
                    <i class="fas fa-code me-2"></i> Ver Programas
                </a>
                <a href="../semana5/codigo/" class="btn btn-outline-light btn-lg rounded-pill px-5 py-3" download>
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
                    En esta quinta semana, dimos el salto a la <strong style="color: #ff006e;">Programación Orientada a Objetos (POO)</strong>. 
                    Aprendimos a crear <strong style="color: #ff1493;">clases</strong> como plantillas, instanciar <strong style="color: #bc13fe;">objetos</strong>, 
                    usar <strong style="color: #00f3ff;">constructores</strong> y aplicar <strong style="color: #39ff14;">encapsulamiento</strong> 
                    con atributos privados y métodos getters/setters. Este paradigma revolucionó nuestra forma de estructurar el código.
                </p>
                <div class="row mt-4">
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #ff006e; font-family: 'Orbitron', sans-serif;">6</div>
                        <p class="text-muted">Programas</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #ff1493; font-family: 'Orbitron', sans-serif;">100%</div>
                        <p class="text-muted">Completado</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #bc13fe; font-family: 'Orbitron', sans-serif;">Inter+</div>
                        <p class="text-muted">Nivel</p>
                    </div>
                    <div class="col-md-3 text-center">
                        <div style="font-size: 2.5rem; color: #00f3ff; font-family: 'Orbitron', sans-serif;">POO</div>
                        <p class="text-muted">Enfoque</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- PROGRAMAS -->
    <section id="programas" class="py-5">
        <div class="container">
            <h2 class="text-center fw-bold mb-5" style="font-family: 'Orbitron', sans-serif; color: #ff006e; text-shadow: 0 0 20px #ff006e;">
                <i class="fas fa-code me-2"></i>Programas Desarrollados
            </h2>

            <!-- PROGRAMA 1: CLASE PERSONA -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-user me-2"></i>Persona.java
                </h3>
                <p class="programa-description">
                    Clase base que representa una persona con atributos privados, constructor, getters, setters y métodos de presentación.
                </p>
                <ul class="programa-features">
                    <li>Atributos privados: nombre, edad, DNI</li>
                    <li>Constructor con parámetros</li>
                    <li>Getters y setters para cada atributo</li>
                    <li>Método mostrarDatos() void</li>
                    <li>Método esMayorDeEdad() boolean</li>
                </ul>
                <div>
                    <a href="../semana5/codigo/Persona.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code1')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code1" class="code-container" style="display: none;">
                    <pre><code>public class Persona {
    // Atributos privados (encapsulamiento)
    private String nombre;
    private int edad;
    private String dni;
    
    // Constructor
    public Persona(String nombre, int edad, String dni) {
        this.nombre = nombre;
        this.edad = edad;
        this.dni = dni;
    }
    
    // Getters
    public String getNombre() {
        return nombre;
    }
    
    public int getEdad() {
        return edad;
    }
    
    public String getDni() {
        return dni;
    }
    
    // Setters
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
    public void setEdad(int edad) {
        if (edad > 0 && edad < 120) {
            this.edad = edad;
        }
    }
    
    public void setDni(String dni) {
        this.dni = dni;
    }
    
    // Métodos
    public void mostrarDatos() {
        System.out.println("=== DATOS DE LA PERSONA ===");
        System.out.println("Nombre: " + nombre);
        System.out.println("Edad: " + edad + " años");
        System.out.println("DNI: " + dni);
    }
    
    public boolean esMayorDeEdad() {
        return edad >= 18;
    }
    
    // Método principal para probar
    public static void main(String[] args) {
        Persona persona1 = new Persona("Juan Pérez", 25, "12345678");
        persona1.mostrarDatos();
        
        if (persona1.esMayorDeEdad()) {
            System.out.println("✓ Es mayor de edad");
        } else {
            System.out.println("✗ Es menor de edad");
        }
        
        // Crear otra persona
        Persona persona2 = new Persona("María López", 16, "87654321");
        persona2.mostrarDatos();
        System.out.println("Es mayor de edad: " + persona2.esMayorDeEdad());
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 2: CUENTA BANCARIA -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-university me-2"></i>CuentaBancaria.java
                </h3>
                <p class="programa-description">
                    Sistema de cuenta bancaria con encapsulamiento total, métodos para depositar, retirar y consultar saldo.
                </p>
                <ul class="programa-features">
                    <li>Saldo privado con validación</li>
                    <li>Método depositar() con validación</li>
                    <li>Método retirar() con validación de saldo</li>
                    <li>Método consultarSaldo()</li>
                    <li>Historial de transacciones</li>
                </ul>
                <div>
                    <a href="../semana5/codigo/CuentaBancaria.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code2')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code2" class="code-container" style="display: none;">
                    <pre><code>public class CuentaBancaria {
    private String titular;
    private String numeroCuenta;
    private double saldo;
    
    public CuentaBancaria(String titular, String numeroCuenta, double saldoInicial) {
        this.titular = titular;
        this.numeroCuenta = numeroCuenta;
        this.saldo = saldoInicial;
    }
    
    public void depositar(double monto) {
        if (monto > 0) {
            saldo += monto;
            System.out.println("Depósito exitoso: S/ " + monto);
            System.out.println("Nuevo saldo: S/ " + saldo);
        } else {
            System.out.println("Error: Monto inválido");
        }
    }
    
    public void retirar(double monto) {
        if (monto > 0 && monto <= saldo) {
            saldo -= monto;
            System.out.println("Retiro exitoso: S/ " + monto);
            System.out.println("Nuevo saldo: S/ " + saldo);
        } else if (monto > saldo) {
            System.out.println("Error: Saldo insuficiente");
        } else {
            System.out.println("Error: Monto inválido");
        }
    }
    
    public void consultarSaldo() {
        System.out.println("=== ESTADO DE CUENTA ===");
        System.out.println("Titular: " + titular);
        System.out.println("Número: " + numeroCuenta);
        System.out.println("Saldo actual: S/ " + saldo);
    }
    
    public static void main(String[] args) {
        CuentaBancaria cuenta = new CuentaBancaria("Juan Pérez", "001-123456", 1000);
        
        cuenta.consultarSaldo();
        cuenta.depositar(500);
        cuenta.retirar(200);
        cuenta.retirar(2000); // Saldo insuficiente
        cuenta.consultarSaldo();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 3: VEHÍCULO CON HERENCIA -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-car me-2"></i>Vehiculo.java
                </h3>
                <p class="programa-description">
                    Jerarquía de clases con herencia: clase base Vehiculo y clases derivadas Auto y Moto con métodos sobrescritos.
                </p>
                <ul class="programa-features">
                    <li>Clase base Vehiculo con atributos comunes</li>
                    <li>Clase Auto hereda de Vehiculo</li>
                    <li>Clase Moto hereda de Vehiculo</li>
                    <li>Método mostrarInfo() sobrescrito</li>
                    <li>Polimorfismo básico</li>
                </ul>
                <div>
                    <a href="../semana5/codigo/Vehiculo.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code3')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code3" class="code-container" style="display: none;">
                    <pre><code>// Clase base
class Vehiculo {
    protected String marca;
    protected String modelo;
    protected int anio;
    
    public Vehiculo(String marca, String modelo, int anio) {
        this.marca = marca;
        this.modelo = modelo;
        this.anio = anio;
    }
    
    public void mostrarInfo() {
        System.out.println("Marca: " + marca);
        System.out.println("Modelo: " + modelo);
        System.out.println("Año: " + anio);
    }
}

// Clase derivada
class Auto extends Vehiculo {
    private int numeroPuertas;
    
    public Auto(String marca, String modelo, int anio, int puertas) {
        super(marca, modelo, anio);
        this.numeroPuertas = puertas;
    }
    
    @Override
    public void mostrarInfo() {
        super.mostrarInfo();
        System.out.println("Tipo: Auto");
        System.out.println("Puertas: " + numeroPuertas);
    }
}

// Otra clase derivada
class Moto extends Vehiculo {
    private boolean tieneCajuela;
    
    public Moto(String marca, String modelo, int anio, boolean cajuela) {
        super(marca, modelo, anio);
        this.tieneCajuela = cajuela;
    }
    
    @Override
    public void mostrarInfo() {
        super.mostrarInfo();
        System.out.println("Tipo: Moto");
        System.out.println("Cajuela: " + (tieneCajuela ? "Sí" : "No"));
    }
}

public class Vehiculo {
    public static void main(String[] args) {
        Auto auto1 = new Auto("Toyota", "Corolla", 2020, 4);
        Moto moto1 = new Moto("Honda", "CBR", 2021, false);
        
        System.out.println("=== AUTO ===");
        auto1.mostrarInfo();
        
        System.out.println("\n=== MOTO ===");
        moto1.mostrarInfo();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 4: ESTUDIANTE -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-user-graduate me-2"></i>Estudiante.java
                </h3>
                <p class="programa-description">
                    Clase Estudiante que extiende Persona, agregando atributos académicos y métodos específicos.
                </p>
                <ul class="programa-features">
                    <li>Herencia de clase Persona</li>
                    <li>Atributos: carrera, semestre, promedio</li>
                    <li>Método calcularPromedio()</li>
                    <li>Método mostrarBoletin()</li>
                    <li>Constructor con super()</li>
                </ul>
                <div>
                    <a href="../semana5/codigo/Estudiante.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code4')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code4" class="code-container" style="display: none;">
                    <pre><code>// Clase base
class Persona {
    protected String nombre;
    protected int edad;
    
    public Persona(String nombre, int edad) {
        this.nombre = nombre;
        this.edad = edad;
    }
    
    public void mostrarDatos() {
        System.out.println("Nombre: " + nombre);
        System.out.println("Edad: " + edad);
    }
}

// Clase derivada
class Estudiante extends Persona {
    private String carrera;
    private int semestre;
    private double[] notas;
    
    public Estudiante(String nombre, int edad, String carrera, int semestre) {
        super(nombre, edad);
        this.carrera = carrera;
        this.semestre = semestre;
        this.notas = new double[3];
    }
    
    public void ingresarNotas(double n1, double n2, double n3) {
        notas[0] = n1;
        notas[1] = n2;
        notas[2] = n3;
    }
    
    public double calcularPromedio() {
        return (notas[0] + notas[1] + notas[2]) / 3;
    }
    
    public void mostrarBoletin() {
        mostrarDatos();
        System.out.println("Carrera: " + carrera);
        System.out.println("Semestre: " + semestre);
        System.out.printf("Promedio: %.2f\n", calcularPromedio());
        
        if (calcularPromedio() >= 11) {
            System.out.println("Estado: APROBADO ✓");
        } else {
            System.out.println("Estado: DESAPROBADO ✗");
        }
    }
}

public class Estudiante {
    public static void main(String[] args) {
        Estudiante est1 = new Estudiante("Ana García", 20, "Ingeniería de Software", 4);
        est1.ingresarNotas(15, 18, 14);
        est1.mostrarBoletin();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 5: PRODUCTO -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-box me-2"></i>Producto.java
                </h3>
                <p class="programa-description">
                    Sistema de inventario con clase Producto, creando múltiples objetos y gestionando stock.
                </p>
                <ul class="programa-features">
                    <li>Atributos: código, nombre, precio, stock</li>
                    <li>Método vender() con validación de stock</li>
                    <li>Método reponer()</li>
                    <li>Método mostrarInfo()</li>
                    <li>Array de objetos Producto</li>
                </ul>
                <div>
                    <a href="../semana5/codigo/Producto.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code5')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code5" class="code-container" style="display: none;">
                    <pre><code>public class Producto {
    private String codigo;
    private String nombre;
    private double precio;
    private int stock;
    
    public Producto(String codigo, String nombre, double precio, int stock) {
        this.codigo = codigo;
        this.nombre = nombre;
        this.precio = precio;
        this.stock = stock;
    }
    
    public boolean vender(int cantidad) {
        if (cantidad > 0 && cantidad <= stock) {
            stock -= cantidad;
            return true;
        }
        return false;
    }
    
    public void reponer(int cantidad) {
        if (cantidad > 0) {
            stock += cantidad;
        }
    }
    
    public void mostrarInfo() {
        System.out.println("=== PRODUCTO ===");
        System.out.println("Código: " + codigo);
        System.out.println("Nombre: " + nombre);
        System.out.printf("Precio: S/ %.2f\n", precio);
        System.out.println("Stock: " + stock);
    }
    
    public static void main(String[] args) {
        Producto p1 = new Producto("P001", "Laptop", 2500, 10);
        Producto p2 = new Producto("P002", "Mouse", 50, 100);
        
        p1.mostrarInfo();
        System.out.println("\nVendiendo 3 laptops...");
        if (p1.vender(3)) {
            System.out.println("Venta exitosa");
        }
        p1.mostrarInfo();
        
        System.out.println("\nReponiendo stock...");
        p1.reponer(5);
        p1.mostrarInfo();
    }
}</code></pre>
                </div>
            </div>

            <!-- PROGRAMA 6: RECTÁNGULO POO -->
            <div class="programa-card">
                <h3 class="programa-title">
                    <i class="fas fa-vector-square me-2"></i>RectanguloPOO.java
                </h3>
                <p class="programa-description">
                    Versión POO del cálculo de rectángulo, con clase Rectangulo que encapsula base y altura.
                </p>
                <ul class="programa-features">
                    <li>Clase Rectangulo con base y altura privadas</li>
                    <li>Método calcularArea() con retorno</li>
                    <li>Método calcularPerimetro() con retorno</li>
                    <li>Validación en setters</li>
                    <li>Múltiples objetos rectángulo</li>
                </ul>
                <div>
                    <a href="../semana5/codigo/RectanguloPOO.java" class="btn-download" download>
                        <i class="fas fa-download me-2"></i>Descargar Código
                    </a>
                    <button class="btn-code" onclick="toggleCode('code6')">
                        <i class="fas fa-code me-2"></i>Ver Código
                    </button>
                </div>
                <div id="code6" class="code-container" style="display: none;">
                    <pre><code>public class RectanguloPOO {
    private double base;
    private double altura;
    
    public RectanguloPOO(double base, double altura) {
        setBase(base);
        setAltura(altura);
    }
    
    public void setBase(double base) {
        if (base > 0) {
            this.base = base;
        }
    }
    
    public void setAltura(double altura) {
        if (altura > 0) {
            this.altura = altura;
        }
    }
    
    public double getBase() {
        return base;
    }
    
    public double getAltura() {
        return altura;
    }
    
    public double calcularArea() {
        return base * altura;
    }
    
    public double calcularPerimetro() {
        return 2 * (base + altura);
    }
    
    public void mostrarInfo() {
        System.out.println("=== RECTÁNGULO ===");
        System.out.println("Base: " + base);
        System.out.println("Altura: " + altura);
        System.out.println("Área: " + calcularArea());
        System.out.println("Perímetro: " + calcularPerimetro());
    }
    
    public static void main(String[] args) {
        RectanguloPOO r1 = new RectanguloPOO(10, 5);
        RectanguloPOO r2 = new RectanguloPOO(7, 3);
        
        r1.mostrarInfo();
        System.out.println();
        r2.mostrarInfo();
    }
}</code></pre>
                </div>
            </div>

        </div>
    </section>

    <!-- APRENDIZAJES -->
    <section class="py-5" style="background: linear-gradient(180deg, #0a0a0f 0%, #1a1a2e 100%);">
        <div class="container">
            <h2 class="text-center fw-bold mb-5" style="font-family: 'Orbitron', sans-serif; color: #ff1493; text-shadow: 0 0 20px #ff1493;">
                <i class="fas fa-graduation-cap me-2"></i>Aprendizajes de la Semana
            </h2>
            
            <div class="row g-4">
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-cube" style="font-size: 3rem; color: #ff006e; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #ff006e;">Clases</h5>
                        <p class="text-muted">Plantillas que definen atributos y métodos de los objetos.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-object-group" style="font-size: 3rem; color: #ff1493; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #ff1493;">Objetos</h5>
                        <p class="text-muted">Instancias de clases con datos específicos.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-lock" style="font-size: 3rem; color: #bc13fe; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #bc13fe;">Encapsulamiento</h5>
                        <p class="text-muted">Proteger datos con private y acceder con getters/setters.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="programa-card text-center">
                        <i class="fas fa-sitemap" style="font-size: 3rem; color: #00f3ff; margin-bottom: 15px;"></i>
                        <h5 style="font-family: 'Orbitron', sans-serif; color: #00f3ff;">Herencia</h5>
                        <p class="text-muted">Crear clases hijas que heredan de clases padre.</p>
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
                    <a href="semana4.jsp" class="btn btn-outline-primary btn-lg w-100 py-3">
                        <i class="fas fa-arrow-left me-2"></i>Semana 4
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="../index.jsp" class="btn btn-outline-light btn-lg w-100 py-3">
                        <i class="fas fa-home me-2"></i>Inicio
                    </a>
                </div>
                <div class="col-md-4">
                    <a href="semana6.jsp" class="btn btn-primary btn-lg w-100 py-3" style="background: linear-gradient(45deg, #ff006e, #ff1493); border: none;">
                        Semana 6<i class="fas fa-arrow-right ms-2"></i>
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
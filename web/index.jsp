<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Axel Caparo - Portafolio Web | Java & JSP Developer</title>
    <meta name="description" content="Portafolio profesional de Axel Caparo - Desarrollo web con Java, JSP y MySQL">
    <meta name="author" content="Axel Caparo">
    
    <!-- Bootstrap 5.3 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <!-- Fuentes Gamer -->
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700;900&family=Rajdhani:wght@300;400;500;600;700&family=Press+Start+2P&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <!-- CSS Personalizado -->
    <link rel="stylesheet" href="css/estilo.css">
    
    <style>
        /* ========================================
           CURSOR PERSONALIZADO GAMER
           ======================================== */
        * {
            cursor: none !important;
        }
        
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
            mix-blend-mode: difference;
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
        
        /* ========================================
           MATRIX RAIN EFFECT
           ======================================== */
        #matrix-canvas {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            z-index: -1;
            opacity: 0.15;
        }
        
        /* ========================================
           LOADER ULTRA GAMER
           ======================================== */
        .loader {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: #0a0a0f;
            display: flex;
            align-items: center;
            justify-content: center;
            z-index: 99999;
            transition: opacity 0.8s ease, visibility 0.8s ease;
        }
        
        .loader.hidden {
            opacity: 0;
            visibility: hidden;
        }
        
        .loader-content {
            text-align: center;
        }
        
        .loader-hexagon {
            width: 100px;
            height: 100px;
            position: relative;
            margin: 0 auto 30px;
            animation: rotateHex 2s linear infinite;
        }
        
        .loader-hexagon::before,
        .loader-hexagon::after {
            content: '';
            position: absolute;
            width: 100%;
            height: 100%;
            border: 3px solid transparent;
            border-top-color: #00f3ff;
            border-right-color: #bc13fe;
            border-radius: 50%;
            animation: spinHex 1.5s linear infinite;
        }
        
        .loader-hexagon::after {
            border-top-color: #ff006e;
            border-right-color: #39ff14;
            animation-direction: reverse;
            animation-duration: 2s;
        }
        
        @keyframes rotateHex {
            100% { transform: rotate(360deg); }
        }
        
        @keyframes spinHex {
            100% { transform: rotate(360deg); }
        }
        
        .loader-text {
            font-family: 'Orbitron', sans-serif;
            color: #00f3ff;
            font-size: 1.5rem;
            letter-spacing: 5px;
            text-shadow: 0 0 20px #00f3ff;
            animation: glitchText 2s infinite;
        }
        
        .loader-progress {
            width: 300px;
            height: 4px;
            background: rgba(0, 243, 255, 0.2);
            margin: 20px auto;
            border-radius: 2px;
            overflow: hidden;
            position: relative;
        }
        
        .loader-progress-bar {
            height: 100%;
            background: linear-gradient(90deg, #00f3ff, #bc13fe, #ff006e);
            animation: progressFill 2s ease-in-out infinite;
            box-shadow: 0 0 10px #00f3ff;
        }
        
        @keyframes progressFill {
            0% { width: 0%; }
            50% { width: 100%; }
            100% { width: 0%; }
        }
        
        /* ========================================
           GLITCH EFFECT
           ======================================== */
        @keyframes glitchText {
            0%, 90%, 100% {
                transform: translate(0);
                text-shadow: 0 0 20px #00f3ff;
            }
            92% {
                transform: translate(-2px, 2px);
                text-shadow: 2px 0 #ff006e, -2px 0 #39ff14;
            }
            94% {
                transform: translate(2px, -2px);
                text-shadow: -2px 0 #ff006e, 2px 0 #39ff14;
            }
            96% {
                transform: translate(-2px, -2px);
                text-shadow: 2px 0 #bc13fe, -2px 0 #00f3ff;
            }
            98% {
                transform: translate(2px, 2px);
                text-shadow: -2px 0 #bc13fe, 2px 0 #00f3ff;
            }
        }
        
        /* ========================================
           HERO SECTION ULTRA
           ======================================== */
        .hero-section {
            position: relative;
            overflow: hidden;
        }
        
        .hero-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: 
                radial-gradient(circle at 20% 30%, rgba(0, 243, 255, 0.3) 0%, transparent 40%),
                radial-gradient(circle at 80% 70%, rgba(188, 19, 254, 0.3) 0%, transparent 40%),
                radial-gradient(circle at 50% 50%, rgba(255, 0, 110, 0.2) 0%, transparent 50%);
            animation: heroGlow 8s ease-in-out infinite;
            z-index: 0;
        }
        
        @keyframes heroGlow {
            0%, 100% { opacity: 0.5; transform: scale(1); }
            50% { opacity: 1; transform: scale(1.1); }
        }
        
        .hero-title {
            position: relative;
            z-index: 1;
            font-family: 'Orbitron', sans-serif;
            font-size: 5rem;
            font-weight: 900;
            background: linear-gradient(45deg, #00f3ff, #bc13fe, #ff006e, #39ff14);
            background-size: 300% 300%;
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            animation: gradientShift 5s ease infinite, glitchText 3s infinite;
            text-transform: uppercase;
            letter-spacing: 8px;
            text-shadow: 0 0 30px rgba(0, 243, 255, 0.5);
        }
        
        @keyframes gradientShift {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
        
        .hero-subtitle {
            font-family: 'Rajdhani', sans-serif;
            font-size: 2rem;
            color: #fff;
            text-shadow: 0 0 20px rgba(255, 255, 255, 0.5);
            letter-spacing: 3px;
            position: relative;
            z-index: 1;
        }
        
        /* ========================================
           SECCIÓN CONTROLES GAMER
           ======================================== */
        .controles-section {
            background: linear-gradient(180deg, #0a0a0f 0%, #1a1a2e 50%, #0a0a0f 100%);
            padding: 80px 0;
            position: relative;
            overflow: hidden;
        }
        
        .controles-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: 
                radial-gradient(circle at 30% 50%, rgba(0, 243, 255, 0.1) 0%, transparent 50%),
                radial-gradient(circle at 70% 50%, rgba(188, 19, 254, 0.1) 0%, transparent 50%);
            animation: controlesGlow 6s ease-in-out infinite;
        }
        
        @keyframes controlesGlow {
            0%, 100% { opacity: 0.5; }
            50% { opacity: 1; }
        }
        
        .controles-title {
            font-family: 'Orbitron', sans-serif;
            font-size: 3rem;
            font-weight: 900;
            text-align: center;
            margin-bottom: 20px;
            background: linear-gradient(45deg, #00f3ff, #bc13fe, #ff006e);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            text-transform: uppercase;
            letter-spacing: 5px;
            position: relative;
            z-index: 1;
        }
        
        .controles-subtitle {
            text-align: center;
            color: #aaa;
            font-family: 'Rajdhani', sans-serif;
            font-size: 1.3rem;
            margin-bottom: 60px;
            position: relative;
            z-index: 1;
        }
        
        .control-card {
            background: rgba(26, 26, 46, 0.8);
            border: 2px solid rgba(0, 243, 255, 0.3);
            border-radius: 15px;
            padding: 30px;
            text-align: center;
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
            backdrop-filter: blur(10px);
            height: 100%;
        }
        
        .control-card::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: conic-gradient(from 0deg, transparent, var(--control-color, #00f3ff), transparent);
            animation: controlRotate 4s linear infinite;
            opacity: 0;
            transition: opacity 0.3s ease;
        }
        
        .control-card:hover::before {
            opacity: 0.2;
        }
        
        @keyframes controlRotate {
            100% { transform: rotate(360deg); }
        }
        
        .control-card:hover {
            transform: translateY(-10px) scale(1.05);
            border-color: var(--control-color, #00f3ff);
            box-shadow: 0 10px 40px rgba(0, 243, 255, 0.4);
        }
        
        .control-key {
            display: inline-block;
            width: 80px;
            height: 80px;
            background: linear-gradient(135deg, var(--control-color, #00f3ff), var(--control-color-dark, #0088aa));
            border-radius: 15px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Orbitron', sans-serif;
            font-size: 2rem;
            font-weight: 900;
            color: #fff;
            margin: 0 auto 20px;
            box-shadow: 0 0 30px var(--control-color, #00f3ff);
            position: relative;
            z-index: 1;
            animation: keyPulse 2s ease-in-out infinite;
        }
        
        @keyframes keyPulse {
            0%, 100% { 
                box-shadow: 0 0 30px var(--control-color, #00f3ff);
                transform: scale(1);
            }
            50% { 
                box-shadow: 0 0 50px var(--control-color, #00f3ff), 0 0 70px var(--control-color, #00f3ff);
                transform: scale(1.05);
            }
        }
        
        .control-icon {
            font-size: 2.5rem;
            color: var(--control-color, #00f3ff);
            margin-bottom: 15px;
            position: relative;
            z-index: 1;
        }
        
        .control-title {
            font-family: 'Orbitron', sans-serif;
            font-size: 1.2rem;
            font-weight: 700;
            color: #fff;
            margin-bottom: 10px;
            position: relative;
            z-index: 1;
        }
        
        .control-description {
            font-family: 'Rajdhani', sans-serif;
            font-size: 1rem;
            color: #aaa;
            position: relative;
            z-index: 1;
        }
        
        .control-action {
            margin-top: 15px;
            padding: 8px 20px;
            background: rgba(0, 243, 255, 0.2);
            border: 1px solid var(--control-color, #00f3ff);
            border-radius: 20px;
            color: var(--control-color, #00f3ff);
            font-family: 'Orbitron', sans-serif;
            font-size: 0.8rem;
            position: relative;
            z-index: 1;
        }
        
        /* ========================================
           TARJETAS 3D GAMER
           ======================================== */
        .custom-card {
            perspective: 1000px;
            transform-style: preserve-3d;
        }
        
        .custom-card-inner {
            position: relative;
            width: 100%;
            height: 100%;
            transition: transform 0.6s;
            transform-style: preserve-3d;
        }
        
        .custom-card:hover .custom-card-inner {
            transform: rotateY(10deg) rotateX(5deg);
        }
        
        .custom-card::before {
            content: '';
            position: absolute;
            top: -2px;
            left: -2px;
            right: -2px;
            bottom: -2px;
            background: linear-gradient(45deg, #00f3ff, #bc13fe, #ff006e, #39ff14);
            background-size: 400% 400%;
            border-radius: 15px;
            z-index: -1;
            animation: borderGlow 3s ease infinite;
            opacity: 0;
            transition: opacity 0.3s ease;
        }
        
        .custom-card:hover::before {
            opacity: 1;
        }
        
        @keyframes borderGlow {
            0% { background-position: 0% 50%; }
            50% { background-position: 100% 50%; }
            100% { background-position: 0% 50%; }
        }
        
        /* ========================================
           BARRAS DE HABILIDADES ANIMADAS
           ======================================== */
        .skill-bar {
            position: relative;
            height: 30px;
            background: rgba(0, 243, 255, 0.1);
            border: 1px solid rgba(0, 243, 255, 0.3);
            border-radius: 15px;
            overflow: hidden;
            margin-bottom: 15px;
        }
        
        .skill-progress {
            height: 100%;
            background: linear-gradient(90deg, #00f3ff, #bc13fe);
            border-radius: 15px;
            position: relative;
            transition: width 2s ease;
            box-shadow: 0 0 20px rgba(0, 243, 255, 0.5);
            animation: skillPulse 2s infinite;
        }
        
        @keyframes skillPulse {
            0%, 100% { box-shadow: 0 0 20px rgba(0, 243, 255, 0.5); }
            50% { box-shadow: 0 0 40px rgba(0, 243, 255, 0.8); }
        }
        
        .skill-progress::after {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.3), transparent);
            animation: skillShine 2s infinite;
        }
        
        @keyframes skillShine {
            0% { transform: translateX(-100%); }
            100% { transform: translateX(100%); }
        }
        
        .skill-label {
            position: absolute;
            left: 15px;
            top: 50%;
            transform: translateY(-50%);
            font-family: 'Orbitron', sans-serif;
            font-size: 0.9rem;
            color: #fff;
            text-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
            z-index: 1;
        }
        
        .skill-percent {
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            font-family: 'Orbitron', sans-serif;
            font-size: 0.9rem;
            color: #fff;
            text-shadow: 0 0 10px rgba(0, 0, 0, 0.8);
            z-index: 1;
        }
        
        /* ========================================
           TECNOLOGÍAS ANIMADAS
           ======================================== */
        .tech-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 30px;
            margin-top: 50px;
        }
        
        .tech-item {
            text-align: center;
            padding: 30px;
            background: rgba(26, 26, 46, 0.5);
            border: 2px solid rgba(0, 243, 255, 0.2);
            border-radius: 15px;
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
        }
        
        .tech-item::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: conic-gradient(from 0deg, transparent, #00f3ff, transparent);
            animation: techRotate 3s linear infinite;
            opacity: 0;
            transition: opacity 0.3s ease;
        }
        
        .tech-item:hover::before {
            opacity: 0.3;
        }
        
        @keyframes techRotate {
            100% { transform: rotate(360deg); }
        }
        
        .tech-item:hover {
            transform: translateY(-10px) scale(1.05);
            border-color: #00f3ff;
            box-shadow: 0 10px 40px rgba(0, 243, 255, 0.4);
        }
        
        .tech-icon {
            font-size: 3rem;
            margin-bottom: 15px;
            transition: all 0.3s ease;
        }
        
        .tech-item:hover .tech-icon {
            transform: scale(1.2) rotate(10deg);
            filter: drop-shadow(0 0 20px currentColor);
        }
        
        /* ========================================
           PARTÍCULAS FLOTANTES
           ======================================== */
        .floating-particles {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            pointer-events: none;
            z-index: -1;
        }
        
        .particle {
            position: absolute;
            width: 4px;
            height: 4px;
            background: #00f3ff;
            border-radius: 50%;
            box-shadow: 0 0 10px #00f3ff;
            animation: floatParticle 15s infinite;
        }
        
        @keyframes floatParticle {
            0%, 100% {
                transform: translateY(0) translateX(0);
                opacity: 0;
            }
            10% {
                opacity: 1;
            }
            90% {
                opacity: 1;
            }
            100% {
                transform: translateY(-100vh) translateX(100px);
                opacity: 0;
            }
        }
        
        /* ========================================
           MÚSICA DE FONDO - CONTROL
           ======================================== */
        .music-control {
            position: fixed;
            bottom: 100px;
            right: 30px;
            width: 60px;
            height: 60px;
            background: linear-gradient(45deg, #bc13fe, #ff006e);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            font-size: 1.5rem;
            cursor: pointer;
            box-shadow: 0 0 20px rgba(188, 19, 254, 0.5);
            transition: all 0.3s ease;
            z-index: 1000;
            animation: pulse 2s infinite;
        }
        
        .music-control:hover {
            transform: scale(1.2) rotate(180deg);
            box-shadow: 0 0 40px rgba(188, 19, 254, 0.8);
        }
        
        .music-control.playing {
            animation: pulse 1s infinite, rotate 3s linear infinite;
        }
        
        @keyframes rotate {
            100% { transform: rotate(360deg); }
        }
        
        /* ========================================
           MODO CLARO/OSCURO TOGGLE
           ======================================== */
        .theme-toggle {
            position: fixed;
            top: 100px;
            right: 30px;
            width: 60px;
            height: 60px;
            background: linear-gradient(45deg, #39ff14, #00f3ff);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            font-size: 1.5rem;
            cursor: pointer;
            box-shadow: 0 0 20px rgba(57, 255, 20, 0.5);
            transition: all 0.3s ease;
            z-index: 1000;
        }
        
        .theme-toggle:hover {
            transform: scale(1.2) rotate(180deg);
            box-shadow: 0 0 40px rgba(57, 255, 20, 0.8);
        }
        
        /* Modo Claro */
        body.light-mode {
            background: #f0f0f0 !important;
            color: #333 !important;
        }
        
        body.light-mode::before {
            background: 
                radial-gradient(circle at 20% 50%, rgba(0, 243, 255, 0.05) 0%, transparent 50%),
                radial-gradient(circle at 80% 80%, rgba(188, 19, 254, 0.05) 0%, transparent 50%) !important;
        }
        
        body.light-mode::after {
            background-image: 
                linear-gradient(rgba(0, 0, 0, 0.03) 1px, transparent 1px),
                linear-gradient(90deg, rgba(0, 0, 0, 0.03) 1px, transparent 1px) !important;
        }
        
        body.light-mode .custom-navbar {
            background: rgba(255, 255, 255, 0.95) !important;
            border-bottom-color: #00f3ff !important;
        }
        
        body.light-mode .navbar-brand,
        body.light-mode .nav-link {
            color: #333 !important;
        }
        
        body.light-mode .custom-card {
            background: #fff !important;
            border-color: rgba(0, 243, 255, 0.3) !important;
        }
        
        body.light-mode .card-title,
        body.light-mode .card-text {
            color: #333 !important;
        }
        
        /* ========================================
           CHAT FLOTANTE
           ======================================== */
        .chat-widget {
            position: fixed;
            bottom: 170px;
            right: 30px;
            z-index: 1000;
        }
        
        .chat-toggle {
            width: 60px;
            height: 60px;
            background: linear-gradient(45deg, #00f3ff, #bc13fe);
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #fff;
            font-size: 1.5rem;
            cursor: pointer;
            box-shadow: 0 0 20px rgba(0, 243, 255, 0.5);
            transition: all 0.3s ease;
            animation: pulse 2s infinite;
        }
        
        .chat-toggle:hover {
            transform: scale(1.2);
            box-shadow: 0 0 40px rgba(0, 243, 255, 0.8);
        }
        
        .chat-box {
            position: absolute;
            bottom: 80px;
            right: 0;
            width: 350px;
            height: 500px;
            background: rgba(10, 10, 15, 0.98);
            border: 2px solid #00f3ff;
            border-radius: 15px;
            display: none;
            flex-direction: column;
            box-shadow: 0 0 40px rgba(0, 243, 255, 0.5);
            backdrop-filter: blur(10px);
        }
        
        .chat-box.active {
            display: flex;
            animation: slideUp 0.3s ease;
        }
        
        @keyframes slideUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        
        .chat-header {
            padding: 20px;
            background: linear-gradient(45deg, #00f3ff, #bc13fe);
            border-radius: 13px 13px 0 0;
            color: #fff;
            font-family: 'Orbitron', sans-serif;
            text-align: center;
        }
        
        .chat-messages {
            flex: 1;
            padding: 20px;
            overflow-y: auto;
            display: flex;
            flex-direction: column;
            gap: 15px;
        }
        
        .chat-message {
            padding: 12px 16px;
            border-radius: 15px;
            max-width: 80%;
            font-family: 'Rajdhani', sans-serif;
            animation: messageSlide 0.3s ease;
        }
        
        @keyframes messageSlide {
            from {
                opacity: 0;
                transform: translateX(-20px);
            }
            to {
                opacity: 1;
                transform: translateX(0);
            }
        }
        
        .chat-message.bot {
            background: rgba(0, 243, 255, 0.2);
            border: 1px solid #00f3ff;
            align-self: flex-start;
        }
        
        .chat-message.user {
            background: rgba(188, 19, 254, 0.2);
            border: 1px solid #bc13fe;
            align-self: flex-end;
        }
        
        .chat-input {
            padding: 15px;
            border-top: 2px solid rgba(0, 243, 255, 0.3);
            display: flex;
            gap: 10px;
        }
        
        .chat-input input {
            flex: 1;
            padding: 10px 15px;
            background: rgba(0, 243, 255, 0.1);
            border: 1px solid rgba(0, 243, 255, 0.3);
            border-radius: 20px;
            color: #fff;
            font-family: 'Rajdhani', sans-serif;
        }
        
        .chat-input input:focus {
            outline: none;
            border-color: #00f3ff;
            box-shadow: 0 0 10px rgba(0, 243, 255, 0.5);
        }
        
        .chat-input button {
            padding: 10px 20px;
            background: linear-gradient(45deg, #00f3ff, #bc13fe);
            border: none;
            border-radius: 20px;
            color: #fff;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        
        .chat-input button:hover {
            transform: scale(1.1);
            box-shadow: 0 0 20px rgba(0, 243, 255, 0.5);
        }
        
        /* ========================================
           SISTEMA DE LOGROS
           ======================================== */
        .achievements-panel {
            position: fixed;
            top: 50%;
            left: -400px;
            transform: translateY(-50%);
            width: 350px;
            background: rgba(10, 10, 15, 0.98);
            border: 2px solid #39ff14;
            border-radius: 15px;
            padding: 20px;
            z-index: 9999;
            transition: left 0.5s ease;
            box-shadow: 0 0 40px rgba(57, 255, 20, 0.5);
        }
        
        .achievements-panel.active {
            left: 30px;
        }
        
        .achievement {
            padding: 15px;
            background: rgba(57, 255, 20, 0.1);
            border: 1px solid rgba(57, 255, 20, 0.3);
            border-radius: 10px;
            margin-bottom: 10px;
            display: flex;
            align-items: center;
            gap: 15px;
            opacity: 0.5;
            transition: all 0.3s ease;
        }
        
        .achievement.unlocked {
            opacity: 1;
            background: rgba(57, 255, 20, 0.2);
            border-color: #39ff14;
            box-shadow: 0 0 20px rgba(57, 255, 20, 0.3);
        }
        
        .achievement-icon {
            font-size: 2rem;
            color: #39ff14;
        }
        
        .achievement-info h5 {
            font-family: 'Orbitron', sans-serif;
            color: #39ff14;
            margin: 0 0 5px 0;
            font-size: 0.9rem;
        }
        
        .achievement-info p {
            margin: 0;
            font-size: 0.8rem;
            color: #aaa;
        }
        
        .achievement-notification {
            position: fixed;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%) scale(0);
            background: rgba(10, 10, 15, 0.98);
            border: 3px solid #39ff14;
            border-radius: 15px;
            padding: 30px;
            text-align: center;
            z-index: 99999;
            box-shadow: 0 0 60px rgba(57, 255, 20, 0.8);
            transition: transform 0.5s ease;
        }
        
        .achievement-notification.show {
            transform: translate(-50%, -50%) scale(1);
            animation: achievementPop 0.5s ease;
        }
        
        @keyframes achievementPop {
            0% { transform: translate(-50%, -50%) scale(0); }
            50% { transform: translate(-50%, -50%) scale(1.2); }
            100% { transform: translate(-50%, -50%) scale(1); }
        }
        
        /* ========================================
           MINI-JUEGO OCULTO
           ======================================== */
        .mini-game {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(10, 10, 15, 0.98);
            display: none;
            align-items: center;
            justify-content: center;
            z-index: 99999;
            backdrop-filter: blur(10px);
        }
        
        .mini-game.active {
            display: flex;
            animation: fadeIn 0.5s ease;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
        
        .game-container {
            width: 400px;
            height: 400px;
            background: rgba(26, 26, 46, 0.8);
            border: 3px solid #00f3ff;
            border-radius: 15px;
            position: relative;
            overflow: hidden;
            box-shadow: 0 0 40px rgba(0, 243, 255, 0.5);
        }
        
        .game-header {
            padding: 15px;
            background: linear-gradient(45deg, #00f3ff, #bc13fe);
            text-align: center;
            font-family: 'Orbitron', sans-serif;
            color: #fff;
        }
        
        .game-area {
            position: relative;
            width: 100%;
            height: calc(100% - 60px);
        }
        
        .player {
            position: absolute;
            width: 30px;
            height: 30px;
            background: #39ff14;
            border-radius: 50%;
            box-shadow: 0 0 20px #39ff14;
            transition: all 0.1s ease;
        }
        
        .target {
            position: absolute;
            width: 25px;
            height: 25px;
            background: #ff006e;
            border-radius: 50%;
            box-shadow: 0 0 20px #ff006e;
            animation: targetPulse 1s infinite;
        }
        
        @keyframes targetPulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.2); }
        }
        
        .game-score {
            position: absolute;
            top: 70px;
            right: 20px;
            font-family: 'Orbitron', sans-serif;
            font-size: 1.5rem;
            color: #39ff14;
            text-shadow: 0 0 10px #39ff14;
        }
        
        .game-close {
            position: absolute;
            top: 70px;
            left: 20px;
            padding: 10px 20px;
            background: #ff006e;
            border: none;
            border-radius: 20px;
            color: #fff;
            font-family: 'Orbitron', sans-serif;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        
        .game-close:hover {
            transform: scale(1.1);
            box-shadow: 0 0 20px #ff006e;
        }
        
        /* ========================================
           FUEGOS ARTIFICIALES
           ======================================== */
        .firework {
            position: fixed;
            width: 5px;
            height: 5px;
            border-radius: 50%;
            pointer-events: none;
            z-index: 9998;
        }
        
        /* ========================================
           TRAIL DE COLORES
           ======================================== */
        .trail {
            position: fixed;
            width: 8px;
            height: 8px;
            border-radius: 50%;
            pointer-events: none;
            z-index: 9997;
            animation: trailFade 1s ease-out;
        }
        
        @keyframes trailFade {
            0% {
                opacity: 1;
                transform: scale(1);
            }
            100% {
                opacity: 0;
                transform: scale(0);
            }
        }
        
        /* ========================================
           VISUALIZADOR DE MÚSICA
           ======================================== */
        .music-visualizer {
            position: fixed;
            bottom: 170px;
            right: 100px;
            display: flex;
            gap: 3px;
            align-items: flex-end;
            height: 40px;
            opacity: 0;
            transition: opacity 0.3s ease;
        }
        
        .music-visualizer.active {
            opacity: 1;
        }
        
        .visualizer-bar {
            width: 4px;
            background: linear-gradient(180deg, #00f3ff, #bc13fe);
            border-radius: 2px;
            animation: visualize 0.5s ease-in-out infinite;
        }
        
        @keyframes visualize {
            0%, 100% { height: 10px; }
            50% { height: 40px; }
        }
        
        /* ========================================
           MODO ARCOÍRIS
           ======================================== */
        body.rainbow-mode {
            animation: rainbowBg 5s linear infinite;
        }
        
        @keyframes rainbowBg {
            0% { filter: hue-rotate(0deg); }
            100% { filter: hue-rotate(360deg); }
        }
        
        /* ========================================
           CONFETTI
           ======================================== */
        .confetti {
            position: fixed;
            width: 10px;
            height: 10px;
            pointer-events: none;
            z-index: 99998;
            animation: confettiFall 3s ease-out;
        }
        
        @keyframes confettiFall {
            0% {
                transform: translateY(-100vh) rotate(0deg);
                opacity: 1;
            }
            100% {
                transform: translateY(100vh) rotate(720deg);
                opacity: 0;
            }
        }
        
        /* ========================================
           BARRA DE XP
           ======================================== */
        .xp-bar-container {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 4px;
            background: rgba(0, 243, 255, 0.2);
            z-index: 9999;
        }
        
        .xp-bar {
            height: 100%;
            background: linear-gradient(90deg, #39ff14, #00f3ff, #bc13fe);
            width: 0%;
            transition: width 0.5s ease;
            box-shadow: 0 0 10px #39ff14;
        }
        
        .xp-text {
            position: fixed;
            top: 10px;
            left: 50%;
            transform: translateX(-50%);
            font-family: 'Orbitron', sans-serif;
            font-size: 0.9rem;
            color: #39ff14;
            text-shadow: 0 0 10px #39ff14;
            z-index: 9999;
        }
        
        /* ========================================
           TIMELINE PROFESIONAL
           ======================================== */
        .timeline-section {
            background: linear-gradient(180deg, #1a1a2e 0%, #0a0a0f 100%);
            padding: 80px 0;
        }
        
        .timeline {
            position: relative;
            padding: 20px 0;
        }
        
        .timeline::before {
            content: '';
            position: absolute;
            left: 50%;
            top: 0;
            width: 4px;
            height: 100%;
            background: linear-gradient(180deg, #00f3ff, #bc13fe, #ff006e);
            transform: translateX(-50%);
            box-shadow: 0 0 20px rgba(0, 243, 255, 0.5);
        }
        
        .timeline-item {
            position: relative;
            margin-bottom: 40px;
            opacity: 0;
            transform: translateY(30px);
            transition: all 0.6s ease;
        }
        
        .timeline-item.visible {
            opacity: 1;
            transform: translateY(0);
        }
        
        .timeline-item::before {
            content: '';
            position: absolute;
            left: 50%;
            top: 20px;
            width: 20px;
            height: 20px;
            background: #00f3ff;
            border: 3px solid #bc13fe;
            border-radius: 50%;
            transform: translateX(-50%);
            box-shadow: 0 0 20px #00f3ff;
        }
        
        .timeline-content {
            width: 45%;
            padding: 20px;
            background: rgba(26, 26, 46, 0.8);
            border: 2px solid rgba(0, 243, 255, 0.3);
            border-radius: 15px;
            transition: all 0.3s ease;
        }
        
        .timeline-content:hover {
            border-color: #00f3ff;
            box-shadow: 0 0 30px rgba(0, 243, 255, 0.5);
        }
        
        .timeline-item:nth-child(odd) .timeline-content {
            margin-left: auto;
        }
        
        .timeline-week {
            font-family: 'Orbitron', sans-serif;
            color: #00f3ff;
            font-size: 0.9rem;
            margin-bottom: 5px;
        }
        
        .timeline-title {
            font-family: 'Orbitron', sans-serif;
            color: #fff;
            font-size: 1.1rem;
            margin-bottom: 8px;
        }
        
        .timeline-desc {
            color: #aaa;
            font-size: 0.9rem;
            margin: 0;
        }
        
        /* ========================================
           CERTIFICACIONES
           ======================================== */
        .certificaciones-section {
            background: #0a0a0f;
            padding: 80px 0;
        }
        
        .cert-card {
            background: rgba(26, 26, 46, 0.8);
            border: 2px solid rgba(57, 255, 20, 0.3);
            border-radius: 15px;
            padding: 25px;
            text-align: center;
            transition: all 0.4s ease;
            height: 100%;
        }
        
        .cert-card:hover {
            transform: translateY(-10px);
            border-color: #39ff14;
            box-shadow: 0 10px 40px rgba(57, 255, 20, 0.4);
        }
        
        .cert-icon {
            font-size: 3rem;
            color: #39ff14;
            margin-bottom: 15px;
            text-shadow: 0 0 20px #39ff14;
        }
        
        .cert-title {
            font-family: 'Orbitron', sans-serif;
            color: #fff;
            font-size: 1rem;
            margin-bottom: 10px;
        }
        
        .cert-desc {
            color: #aaa;
            font-size: 0.85rem;
        }
        
        /* ========================================
           CONTACTO FORM
           ======================================== */
        .contacto-section {
            background: linear-gradient(180deg, #0a0a0f 0%, #1a1a2e 100%);
            padding: 80px 0;
        }
        
        .contact-form {
            background: rgba(26, 26, 46, 0.8);
            border: 2px solid rgba(0, 243, 255, 0.3);
            border-radius: 15px;
            padding: 40px;
            box-shadow: 0 0 40px rgba(0, 243, 255, 0.2);
        }
        
        .form-control {
            background: rgba(0, 243, 255, 0.05);
            border: 1px solid rgba(0, 243, 255, 0.3);
            color: #fff;
            border-radius: 10px;
            padding: 12px 15px;
            transition: all 0.3s ease;
        }
        
        .form-control:focus {
            background: rgba(0, 243, 255, 0.1);
            border-color: #00f3ff;
            box-shadow: 0 0 20px rgba(0, 243, 255, 0.3);
            color: #fff;
        }
        
        .form-control::placeholder {
            color: #888;
        }
        
        /* ========================================
           FOOTER
           ======================================== */
        .footer-section {
            background: rgba(10, 10, 15, 0.95);
            border-top: 2px solid #00f3ff;
            box-shadow: 0 0 20px rgba(0, 243, 255, 0.3);
            padding: 40px 0 20px;
        }
        
        .footer-social a {
            display: inline-block;
            width: 45px;
            height: 45px;
            background: rgba(0, 243, 255, 0.1);
            border: 2px solid rgba(0, 243, 255, 0.3);
            border-radius: 50%;
            color: #00f3ff;
            font-size: 1.2rem;
            line-height: 41px;
            text-align: center;
            margin: 0 8px;
            transition: all 0.3s ease;
        }
        
        .footer-social a:hover {
            background: #00f3ff;
            color: #000;
            transform: translateY(-5px);
            box-shadow: 0 0 20px #00f3ff;
        }
        
        /* ========================================
           ANIMACIONES DE ENTRADA
           ======================================== */
        .animate-fadeInUp {
            opacity: 0;
            transform: translateY(50px);
            transition: all 1s ease;
        }
        
        .delay-1 { transition-delay: 0.2s; }
        .delay-2 { transition-delay: 0.4s; }
        .delay-3 { transition-delay: 0.6s; }
        
        /* ========================================
           BOTÓN WHATSAPP
           ======================================== */
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
        
        @keyframes pulse {
            0%, 100% { transform: scale(1); }
            50% { transform: scale(1.1); }
        }
        
        .whatsapp-btn:hover {
            transform: scale(1.2) rotate(10deg);
            box-shadow: 0 0 40px rgba(37, 211, 102, 0.8);
        }
        
        /* ========================================
           SCROLLBAR GAMER
           ======================================== */
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
        
        ::-webkit-scrollbar-thumb:hover {
            background: linear-gradient(#bc13fe, #ff006e);
        }
        
        /* ========================================
           PERFIL
           ======================================== */
        .profile-img-container {
            position: relative;
            display: inline-block;
        }
        
        .profile-img-container::before {
            content: '';
            position: absolute;
            top: -10px;
            left: -10px;
            right: -10px;
            bottom: -10px;
            background: linear-gradient(45deg, #00f3ff, #bc13fe, #ff006e);
            border-radius: 50%;
            z-index: -1;
            animation: rotate 3s linear infinite;
            filter: blur(10px);
        }
        
        .profile-img-container img {
            border: 3px solid #00f3ff;
            box-shadow: 0 0 30px rgba(0, 243, 255, 0.5);
        }
        
        .stat-box {
            padding: 1rem;
            background: rgba(0, 243, 255, 0.05);
            border: 1px solid rgba(0, 243, 255, 0.2);
            border-radius: 10px;
            transition: all 0.3s ease;
        }
        
        .stat-box:hover {
            background: rgba(0, 243, 255, 0.1);
            transform: translateY(-5px);
            box-shadow: 0 0 20px rgba(0, 243, 255, 0.3);
        }
        
        .stat-box h3 {
            font-family: 'Orbitron', sans-serif;
            font-size: 2.5rem;
            text-shadow: 0 0 15px #00f3ff;
        }
        
        @keyframes rotate {
            100% { transform: rotate(360deg); }
        }
        
        /* ========================================
           RESPONSIVE
           ======================================== */
        @media (max-width: 768px) {
            .hero-title {
                font-size: 2.5rem;
            }
            
            .hero-subtitle {
                font-size: 1.2rem;
            }
            
            .controles-title {
                font-size: 2rem;
            }
            
            .control-key {
                width: 60px;
                height: 60px;
                font-size: 1.5rem;
            }
            
            .timeline::before {
                left: 20px;
            }
            
            .timeline-content {
                width: calc(100% - 60px);
                margin-left: 60px !important;
            }
            
            .timeline-item::before {
                left: 20px;
            }
        }
    </style>
</head>
<body>

    <!-- CURSOR PERSONALIZADO -->
    <div class="custom-cursor" id="cursor"></div>
    <div class="custom-cursor-dot" id="cursor-dot"></div>

    <!-- MATRIX RAIN CANVAS -->
    <canvas id="matrix-canvas"></canvas>

    <!-- PARTÍCULAS FLOTANTES -->
    <div class="floating-particles" id="particles"></div>

    <!-- BARRA DE XP -->
    <div class="xp-bar-container">
        <div class="xp-bar" id="xp-bar"></div>
    </div>
    <div class="xp-text" id="xp-text">XP: 0 / 1000</div>

    <!-- LOADER ULTRA GAMER -->
    <div class="loader" id="loader">
        <div class="loader-content">
            <div class="loader-hexagon"></div>
            <h2 class="loader-text">INICIALIZANDO</h2>
            <div class="loader-progress">
                <div class="loader-progress-bar"></div>
            </div>
            <p class="text-muted mt-3" style="font-family: 'Rajdhani', sans-serif; letter-spacing: 2px;">
                <i class="fas fa-gamepad"></i> Cargando Portafolio Gamer
            </p>
        </div>
    </div>

    <!-- MODO CLARO/OSCURO TOGGLE -->
    <div class="theme-toggle" id="theme-toggle" title="Cambiar tema">
        <i class="fas fa-moon"></i>
    </div>

    <!-- CONTROL DE MÚSICA -->
    <div class="music-control" id="music-control" title="Música de fondo">
        <i class="fas fa-music"></i>
    </div>
    
    <!-- VISUALIZADOR DE MÚSICA -->
    <div class="music-visualizer" id="music-visualizer">
        <div class="visualizer-bar" style="animation-delay: 0s;"></div>
        <div class="visualizer-bar" style="animation-delay: 0.1s;"></div>
        <div class="visualizer-bar" style="animation-delay: 0.2s;"></div>
        <div class="visualizer-bar" style="animation-delay: 0.3s;"></div>
        <div class="visualizer-bar" style="animation-delay: 0.4s;"></div>
    </div>
    
    <audio id="bg-music" loop>
        <source src="https://www.bensound.com/bensound-music/bensound-epic.mp3" type="audio/mpeg">
    </audio>

    <!-- CHAT FLOTANTE -->
    <div class="chat-widget">
        <div class="chat-toggle" id="chat-toggle" title="Chat">
            <i class="fas fa-comments"></i>
        </div>
        <div class="chat-box" id="chat-box">
            <div class="chat-header">
                <i class="fas fa-robot"></i> Chat Gamer
            </div>
            <div class="chat-messages" id="chat-messages">
                <div class="chat-message bot">
                    ¡Hola! 👋 Soy el asistente de Axel. ¿En qué puedo ayudarte?
                </div>
            </div>
            <div class="chat-input">
                <input type="text" id="chat-input" placeholder="Escribe un mensaje...">
                <button id="chat-send"><i class="fas fa-paper-plane"></i></button>
            </div>
        </div>
    </div>

    <!-- PANEL DE LOGROS -->
    <div class="achievements-panel" id="achievements-panel">
        <h4 style="font-family: 'Orbitron', sans-serif; color: #39ff14; margin-bottom: 20px;">
            <i class="fas fa-trophy"></i> Logros
        </h4>
        <div class="achievement" id="achievement-1">
            <div class="achievement-icon"><i class="fas fa-star"></i></div>
            <div class="achievement-info">
                <h5>Primer Paso</h5>
                <p>Visita el portafolio</p>
            </div>
        </div>
        <div class="achievement" id="achievement-2">
            <div class="achievement-icon"><i class="fas fa-code"></i></div>
            <div class="achievement-info">
                <h5>Explorador</h5>
                <p>Visita 3 semanas</p>
            </div>
        </div>
        <div class="achievement" id="achievement-3">
            <div class="achievement-icon"><i class="fas fa-gamepad"></i></div>
            <div class="achievement-info">
                <h5>Gamer</h5>
                <p>Descubre el mini-juego</p>
            </div>
        </div>
        <div class="achievement" id="achievement-4">
            <div class="achievement-icon"><i class="fas fa-music"></i></div>
            <div class="achievement-info">
                <h5>DJ</h5>
                <p>Activa la música</p>
            </div>
        </div>
        <div class="achievement" id="achievement-5">
            <div class="achievement-icon"><i class="fas fa-comments"></i></div>
            <div class="achievement-info">
                <h5>Social</h5>
                <p>Usa el chat</p>
            </div>
        </div>
        <div class="achievement" id="achievement-6">
            <div class="achievement-icon"><i class="fas fa-palette"></i></div>
            <div class="achievement-info">
                <h5>Artista</h5>
                <p>Cambia el tema</p>
            </div>
        </div>
        <div class="achievement" id="achievement-7">
            <div class="achievement-icon"><i class="fas fa-fire"></i></div>
            <div class="achievement-info">
                <h5>Explosivo</h5>
                <p>Activa fuegos artificiales</p>
            </div>
        </div>
        <div class="achievement" id="achievement-8">
            <div class="achievement-icon"><i class="fas fa-rainbow"></i></div>
            <div class="achievement-info">
                <h5>Arcoíris</h5>
                <p>Activa modo arcoíris</p>
            </div>
        </div>
        <div class="achievement" id="achievement-9">
            <div class="achievement-icon"><i class="fas fa-bolt"></i></div>
            <div class="achievement-info">
                <h5>Veloz</h5>
                <p>Alcanza 500 XP</p>
            </div>
        </div>
        <div class="achievement" id="achievement-10">
            <div class="achievement-icon"><i class="fas fa-crown"></i></div>
            <div class="achievement-info">
                <h5>Maestro</h5>
                <p>Desbloquea todos los logros</p>
            </div>
        </div>
    </div>

    <!-- NOTIFICACIÓN DE LOGRO -->
    <div class="achievement-notification" id="achievement-notification">
        <i class="fas fa-trophy" style="font-size: 4rem; color: #39ff14; margin-bottom: 20px;"></i>
        <h3 style="font-family: 'Orbitron', sans-serif; color: #39ff14; margin-bottom: 10px;">
            ¡LOGRO DESBLOQUEADO!
        </h3>
        <p id="achievement-name" style="font-size: 1.2rem; color: #fff;"></p>
    </div>

    <!-- MINI-JUEGO OCULTO -->
    <div class="mini-game" id="mini-game">
        <div class="game-container">
            <div class="game-header">
                <i class="fas fa-gamepad"></i> Atrapa los Puntos
            </div>
            <div class="game-area" id="game-area">
                <div class="player" id="player"></div>
                <div class="game-score">Score: <span id="game-score">0</span></div>
                <button class="game-close" id="game-close">Cerrar</button>
            </div>
        </div>
    </div>

    <!-- BARRA DE NAVEGACIÓN -->
    <nav class="navbar navbar-expand-lg custom-navbar">
        <div class="container">
            <a class="navbar-brand fw-bold" href="index.jsp">
                <i class="fas fa-code text-primary"></i> Axel Caparo
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link active" href="#inicio">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#perfil">Sobre Mí</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#controles">Controles</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#habilidades">Habilidades</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#timeline">Progreso</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#tecnologias">Tecnologías</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
                            Semanas
                        </a>
                        <ul class="dropdown-menu">
                            <% for (int i = 1; i <= 16; i++) { %>
                                <li>
                                    <a class="dropdown-item" href="semanas/semana<%= i %>.jsp">
                                        <i class="fas fa-gamepad me-2"></i> Semana <%= i %>
                                    </a>
                                </li>
                            <% } %>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#contacto">Contacto</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- SECCIÓN HERO (INICIO) -->
    <section id="inicio" class="hero-section">
        <div class="container">
            <div class="row align-items-center min-vh-100">
                <div class="col-lg-8 mx-auto text-center">
                    <h1 class="hero-title mb-4 animate-fadeInUp" id="titulo-hero">
                        Axel Caparo
                    </h1>
                    <p class="hero-subtitle mb-3 animate-fadeInUp delay-1">
                        <i class="fas fa-laptop-code me-2"></i> Desarrollador Web Java & JSP
                    </p>
                    <p class="text-muted mb-5 animate-fadeInUp delay-1" style="font-size: 1.1rem;">
                        Estudiante de Ingeniería de Software | 16 Semanas de Progreso | 80+ Aplicaciones
                    </p>
                    <div class="animate-fadeInUp delay-2">
                        <a href="#semanas" class="btn btn-primary btn-lg rounded-pill px-5 py-3 me-3" style="background: linear-gradient(45deg, #00f3ff, #bc13fe); border: none;">
                            <i class="fas fa-rocket me-2"></i> Ver Proyectos
                        </a>
                        <a href="#contacto" class="btn btn-outline-light btn-lg rounded-pill px-5 py-3">
                            <i class="fas fa-envelope me-2"></i> Contactar
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- SECCIÓN CONTROLES/AACCIONES -->
    <section id="controles" class="controles-section">
        <div class="container">
            <h2 class="controles-title">
                <i class="fas fa-keyboard me-3"></i> Controles del Portafolio
            </h2>
            <p class="controles-subtitle">
                Descubre todas las acciones interactivas que puedes realizar
            </p>

            <div class="row g-4">
                <!-- Control 1: Tecla L -->
                <div class="col-md-6 col-lg-3">
                    <div class="control-card" style="--control-color: #39ff14; --control-color-dark: #20aa0a;">
                        <div class="control-key">L</div>
                        <div class="control-icon">
                            <i class="fas fa-trophy"></i>
                        </div>
                        <h5 class="control-title">Ver Logros</h5>
                        <p class="control-description">
                            Abre el panel de logros desbloqueables
                        </p>
                        <div class="control-action">
                            <i class="fas fa-hand-pointer me-2"></i>Presiona L
                        </div>
                    </div>
                </div>

                <!-- Control 2: Tecla G -->
                <div class="col-md-6 col-lg-3">
                    <div class="control-card" style="--control-color: #00f3ff; --control-color-dark: #0088aa;">
                        <div class="control-key">G</div>
                        <div class="control-icon">
                            <i class="fas fa-gamepad"></i>
                        </div>
                        <h5 class="control-title">Mini-Juego</h5>
                        <p class="control-description">
                            Activa el juego oculto de atrapar puntos
                        </p>
                        <div class="control-action">
                            <i class="fas fa-hand-pointer me-2"></i>Presiona G
                        </div>
                    </div>
                </div>

                <!-- Control 3: Tecla R -->
                <div class="col-md-6 col-lg-3">
                    <div class="control-card" style="--control-color: #ff006e; --control-color-dark: #aa0048;">
                        <div class="control-key">R</div>
                        <div class="control-icon">
                            <i class="fas fa-rainbow"></i>
                        </div>
                        <h5 class="control-title">Modo Arcoíris</h5>
                        <p class="control-description">
                            Activa el efecto de colores cambiantes
                        </p>
                        <div class="control-action">
                            <i class="fas fa-hand-pointer me-2"></i>Presiona R
                        </div>
                    </div>
                </div>

                <!-- Control 4: Clic -->
                <div class="col-md-6 col-lg-3">
                    <div class="control-card" style="--control-color: #bc13fe; --control-color-dark: #7a0aaa;">
                        <div class="control-key">
                            <i class="fas fa-mouse-pointer" style="font-size: 1.5rem;"></i>
                        </div>
                        <div class="control-icon">
                            <i class="fas fa-fire"></i>
                        </div>
                        <h5 class="control-title">Fuegos Artificiales</h5>
                        <p class="control-description">
                            Haz clic en cualquier parte para explosiones
                        </p>
                        <div class="control-action">
                            <i class="fas fa-hand-pointer me-2"></i>Haz Clic
                        </div>
                    </div>
                </div>

                <!-- Control 5: Botón Música -->
                <div class="col-md-6 col-lg-3">
                    <div class="control-card" style="--control-color: #bc13fe; --control-color-dark: #7a0aaa;">
                        <div class="control-key">
                            <i class="fas fa-music" style="font-size: 1.5rem;"></i>
                        </div>
                        <div class="control-icon">
                            <i class="fas fa-headphones"></i>
                        </div>
                        <h5 class="control-title">Música de Fondo</h5>
                        <p class="control-description">
                            Activa/desactiva la música épica
                        </p>
                        <div class="control-action">
                            <i class="fas fa-hand-pointer me-2"></i>Botón Morado
                        </div>
                    </div>
                </div>

                <!-- Control 6: Botón Tema -->
                <div class="col-md-6 col-lg-3">
                    <div class="control-card" style="--control-color: #39ff14; --control-color-dark: #20aa0a;">
                        <div class="control-key">
                            <i class="fas fa-adjust" style="font-size: 1.5rem;"></i>
                        </div>
                        <div class="control-icon">
                            <i class="fas fa-sun"></i>
                        </div>
                        <h5 class="control-title">Cambiar Tema</h5>
                        <p class="control-description">
                            Alterna entre modo claro y oscuro
                        </p>
                        <div class="control-action">
                            <i class="fas fa-hand-pointer me-2"></i>Botón Verde
                        </div>
                    </div>
                </div>

                <!-- Control 7: Chat -->
                <div class="col-md-6 col-lg-3">
                    <div class="control-card" style="--control-color: #00f3ff; --control-color-dark: #0088aa;">
                        <div class="control-key">
                            <i class="fas fa-comments" style="font-size: 1.5rem;"></i>
                        </div>
                        <div class="control-icon">
                            <i class="fas fa-robot"></i>
                        </div>
                        <h5 class="control-title">Chat con Bot</h5>
                        <p class="control-description">
                            Habla con el asistente virtual
                        </p>
                        <div class="control-action">
                            <i class="fas fa-hand-pointer me-2"></i>Botón Azul
                        </div>
                    </div>
                </div>

                <!-- Control 8: Mouse -->
                <div class="col-md-6 col-lg-3">
                    <div class="control-card" style="--control-color: #ff006e; --control-color-dark: #aa0048;">
                        <div class="control-key">
                            <i class="fas fa-mouse" style="font-size: 1.5rem;"></i>
                        </div>
                        <div class="control-icon">
                            <i class="fas fa-palette"></i>
                        </div>
                        <h5 class="control-title">Trail de Colores</h5>
                        <p class="control-description">
                            Mueve el mouse para dejar estela
                        </p>
                        <div class="control-action">
                            <i class="fas fa-hand-pointer me-2"></i>Mueve el Mouse
                        </div>
                    </div>
                </div>
            </div>

            <!-- Instrucciones Adicionales -->
            <div class="text-center mt-5">
                <div class="alert alert-info" style="background: rgba(0, 243, 255, 0.1); border: 2px solid #00f3ff; color: #fff; font-family: 'Rajdhani', sans-serif;">
                    <i class="fas fa-info-circle me-2"></i>
                    <strong>¡TIP!</strong> Gana XP con cada acción que realices. ¡Alcanza 1000 XP para ser un maestro!
                </div>
            </div>
        </div>
    </section>

    <!-- SECCIÓN PERFIL -->
    <section id="perfil" class="perfil-section">
        <div class="container py-5">
            <div class="row align-items-center g-5">
                <div class="col-md-5 text-center">
                    <div class="profile-img-container">
                        <img src="imagenes/yo.png" 
                        class="img-fluid rounded-circle shadow-lg" alt="Axel Caparo">
                    </div>
                </div>
                <div class="col-md-7">
                    <h2 class="fw-bold mb-4 text-primary">
                        <i class="fas fa-user-astronaut me-2"></i> Sobre Mí
                    </h2>
                    <p class="fs-5 mb-4">
                        Soy <strong>Axel Caparo</strong>, estudiante apasionado de Ingeniería de Software. 
                        Este portafolio documenta mi progreso en el dominio de <strong>Java, JSP y MySQL</strong>, 
                        donde he construido más de <strong>80 aplicaciones</strong> desde cero a lo largo de 
                        <strong>16 semanas intensivas</strong> de aprendizaje.
                    </p>
                    <p class="text-muted mb-4">
                        Mi objetivo es convertirme en un desarrollador Full Stack profesional, 
                        dominando tanto el backend con Java como el frontend con tecnologías web modernas.
                    </p>
                    <div class="row text-center mt-5">
                        <div class="col-4">
                            <div class="stat-box">
                                <h3 class="fw-bold text-primary" data-count="80">0</h3>
                                <p class="text-muted mb-0">Programas</p>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="stat-box">
                                <h3 class="fw-bold text-primary" data-count="16">0</h3>
                                <p class="text-muted mb-0">Semanas</p>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="stat-box">
                                <h3 class="fw-bold text-primary" data-count="100">0</h3>
                                <p class="text-muted mb-0">Dedicación %</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- SECCIÓN HABILIDADES -->
    <section id="habilidades" class="habilidades-section py-5">
        <div class="container py-5">
            <div class="text-center mb-5">
                <h2 class="fw-bold display-5 mb-3">
                    <i class="fas fa-chart-line text-primary"></i> Mis Habilidades
                </h2>
                <p class="text-muted">Nivel de dominio en diferentes tecnologías</p>
            </div>

            <div class="row">
                <div class="col-md-6">
                    <div class="skill-bar">
                        <div class="skill-progress" data-skill="95">
                            <span class="skill-label">Java</span>
                            <span class="skill-percent">95%</span>
                        </div>
                    </div>
                    <div class="skill-bar">
                        <div class="skill-progress" data-skill="90">
                            <span class="skill-label">JSP</span>
                            <span class="skill-percent">90%</span>
                        </div>
                    </div>
                    <div class="skill-bar">
                        <div class="skill-progress" data-skill="85">
                            <span class="skill-label">MySQL</span>
                            <span class="skill-percent">85%</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="skill-bar">
                        <div class="skill-progress" data-skill="88">
                            <span class="skill-label">HTML/CSS</span>
                            <span class="skill-percent">88%</span>
                        </div>
                    </div>
                    <div class="skill-bar">
                        <div class="skill-progress" data-skill="80">
                            <span class="skill-label">JavaScript</span>
                            <span class="skill-percent">80%</span>
                        </div>
                    </div>
                    <div class="skill-bar">
                        <div class="skill-progress" data-skill="92">
                            <span class="skill-label">POO</span>
                            <span class="skill-percent">92%</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- TIMELINE PROFESIONAL -->
    <section id="timeline" class="timeline-section">
        <div class="container">
            <h2 class="text-center fw-bold mb-3" style="font-family: 'Orbitron', sans-serif; color: #00f3ff; text-shadow: 0 0 20px #00f3ff;">
                <i class="fas fa-road me-2"></i>Mi Progreso Semanal
            </h2>
            <p class="text-center text-muted mb-5">16 semanas de aprendizaje intensivo</p>

            <div class="timeline">
                <div class="timeline-item">
                    <div class="timeline-content">
                        <div class="timeline-week"><i class="fas fa-calendar"></i> Semana 1-2</div>
                        <h5 class="timeline-title">Fundamentos de Java</h5>
                        <p class="timeline-desc">Operaciones básicas, geometría, porcentajes y cálculos de sueldos.</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-content">
                        <div class="timeline-week"><i class="fas fa-calendar"></i> Semana 3-4</div>
                        <h5 class="timeline-title">Métodos y Estructuras</h5>
                        <p class="timeline-desc">Métodos void/retorno, if-else, switch y estructuras selectivas.</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-content">
                        <div class="timeline-week"><i class="fas fa-calendar"></i> Semana 5-6</div>
                        <h5 class="timeline-title">POO y Series</h5>
                        <p class="timeline-desc">Clases, objetos, herencia, series numéricas y calculadora.</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-content">
                        <div class="timeline-week"><i class="fas fa-calendar"></i> Semana 7-8</div>
                        <h5 class="timeline-title">Matemáticas y BD</h5>
                        <p class="timeline-desc">Funciones Math avanzadas, conexión JDBC y operaciones CRUD.</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-content">
                        <div class="timeline-week"><i class="fas fa-calendar"></i> Semana 9-10</div>
                        <h5 class="timeline-title">Desarrollo Web con JSP</h5>
                        <p class="timeline-desc">Proyecto final, estructuras de datos, colecciones y arrays avanzados.</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-content">
                        <div class="timeline-week"><i class="fas fa-calendar"></i> Semana 11-12</div>
                        <h5 class="timeline-title">Archivos e Interfaces Gráficas</h5>
                        <p class="timeline-desc">Manejo de archivos, excepciones, GUIs con Swing y AWT.</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-content">
                        <div class="timeline-week"><i class="fas fa-calendar"></i> Semana 13-14</div>
                        <h5 class="timeline-title">Programación Web Avanzada</h5>
                        <p class="timeline-desc">Servlets, sesiones, APIs REST, web services y arquitecturas modernas.</p>
                    </div>
                </div>
                <div class="timeline-item">
                    <div class="timeline-content">
                        <div class="timeline-week"><i class="fas fa-calendar"></i> Semana 15-16</div>
                        <h5 class="timeline-title">Seguridad y Proyecto Integrador</h5>
                        <p class="timeline-desc">Encriptación, autenticación, testing y sistema completo integrado.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- SECCIÓN TECNOLOGÍAS -->
    <section id="tecnologias" class="tecnologias-section py-5">
        <div class="container py-5">
            <div class="text-center mb-5">
                <h2 class="fw-bold display-5 mb-3">
                    <i class="fas fa-microchip text-primary"></i> Tecnologías
                </h2>
                <p class="text-muted">Herramientas que domino</p>
            </div>

            <div class="tech-grid">
                <div class="tech-item">
                    <div class="tech-icon" style="color: #007396;">
                        <i class="fab fa-java"></i>
                    </div>
                    <h5>Java</h5>
                </div>
                <div class="tech-item">
                    <div class="tech-icon" style="color: #f89820;">
                        <i class="fas fa-code"></i>
                    </div>
                    <h5>JSP</h5>
                </div>
                <div class="tech-item">
                    <div class="tech-icon" style="color: #4479a1;">
                        <i class="fas fa-database"></i>
                    </div>
                    <h5>MySQL</h5>
                </div>
                <div class="tech-item">
                    <div class="tech-icon" style="color: #e34f26;">
                        <i class="fab fa-html5"></i>
                    </div>
                    <h5>HTML5</h5>
                </div>
                <div class="tech-item">
                    <div class="tech-icon" style="color: #1572b6;">
                        <i class="fab fa-css3-alt"></i>
                    </div>
                    <h5>CSS3</h5>
                </div>
                <div class="tech-item">
                    <div class="tech-icon" style="color: #f7df1e;">
                        <i class="fab fa-js"></i>
                    </div>
                    <h5>JavaScript</h5>
                </div>
                <div class="tech-item">
                    <div class="tech-icon" style="color: #7952b3;">
                        <i class="fab fa-bootstrap"></i>
                    </div>
                    <h5>Bootstrap</h5>
                </div>
                <div class="tech-item">
                    <div class="tech-icon" style="color: #f05032;">
                        <i class="fab fa-git-alt"></i>
                    </div>
                    <h5>Git</h5>
                </div>
            </div>
        </div>
    </section>

    <!-- CERTIFICACIONES -->
    <section class="certificaciones-section">
        <div class="container">
            <h2 class="text-center fw-bold mb-3" style="font-family: 'Orbitron', sans-serif; color: #39ff14; text-shadow: 0 0 20px #39ff14;">
                <i class="fas fa-award me-2"></i>Logros Académicos
            </h2>
            <p class="text-center text-muted mb-5">Reconocimientos durante el curso</p>

            <div class="row g-4">
                <div class="col-md-4">
                    <div class="cert-card">
                        <div class="cert-icon"><i class="fas fa-medal"></i></div>
                        <h5 class="cert-title">80+ Programas</h5>
                        <p class="cert-desc">Desarrollo exitoso de más de 80 aplicaciones en Java</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="cert-card">
                        <div class="cert-icon"><i class="fas fa-rocket"></i></div>
                        <h5 class="cert-title">16 Semanas Intensivas</h5>
                        <p class="cert-desc">Progreso constante durante 16 semanas de aprendizaje</p>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="cert-card">
                        <div class="cert-icon"><i class="fas fa-trophy"></i></div>
                        <h5 class="cert-title">Proyecto Final</h5>
                        <p class="cert-desc">Portafolio web profesional con Java, JSP y MySQL</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- SECCIÓN SEMANAS (PROYECTOS) -->
    <section id="semanas" class="semanas-section">
        <div class="container py-5">
            <div class="text-center mb-5">
                <h2 class="fw-bold display-5 mb-3">
                    <i class="fas fa-gamepad text-primary"></i> Mis Proyectos por Semana
                </h2>
                <p class="text-muted">Haz clic en cualquier tarjeta para ver el código y la explicación</p>
            </div>

            <div class="row g-4">
                <% 
                String[] titulos = {
                    "Introducción a Java", "Operaciones y Porcentajes", "Métodos en Java",
                    "Estructuras Selectivas", "Programación Orientada a Objetos", "Métodos y Series",
                    "Clases y Math", "Bases de Datos", "Proyecto Final",
                    "Estructuras de Datos", "Archivos y Excepciones", "Interfaces Gráficas",
                    "Programación Web", "APIs y Web Services", "Seguridad", "Proyecto Integrador"
                };
                String[] desc = {
                    "Operaciones básicas y geometría.", "Cálculos de sueldos y descuentos.",
                    "Métodos void y con retorno.", "Uso de if-else y switch.",
                    "Clases, objetos y POO.", "Series numéricas y calculadora.",
                    "Funciones matemáticas avanzadas.", "Conexión JDBC y CRUD.",
                    "Integración final de conocimientos.", "Arrays, listas y colecciones.",
                    "Manejo de archivos y errores.", "Swing y AWT para GUI.",
                    "Servlets y JSP avanzado.", "REST APIs y servicios web.",
                    "Encriptación y autenticación.", "Sistema completo integrado."
                };
                String[] icons = {
                    "fa-java", "fa-calculator", "fa-code",
                    "fa-project-diagram", "fa-cubes", "fa-infinity",
                    "fa-square-root-alt", "fa-database", "fa-rocket",
                    "fa-list", "fa-file-alt", "fa-window-maximize",
                    "fa-globe", "fa-plug", "fa-lock", "fa-star"
                };
                String[] colores = {
                    "#00f3ff", "#bc13fe", "#ff006e",
                    "#39ff14", "#00f3ff", "#bc13fe",
                    "#ff006e", "#39ff14", "#00f3ff",
                    "#00ff88", "#ff4500", "#ff1493",
                    "#0066ff", "#8b00ff", "#dc143c", "#ffd700"
                };
                
                for (int i = 1; i <= 16; i++) { 
                %>
                    <div class="col-md-6 col-lg-3">
                        <div class="card custom-card h-100" 
                             style="--card-color: <%= colores[i-1] %>;">
                            <div class="custom-card-inner">
                                <div class="card-body p-4 d-flex flex-column">
                                    <div class="mb-3 d-flex justify-content-between align-items-center">
                                        <span class="badge bg-primary rounded-pill">
                                            <i class="fas <%= icons[i-1] %> me-1"></i> Semana <%= i %>
                                        </span>
                                        <small class="text-muted">
                                            <i class="fas fa-signal"></i> LVL <%= i %>
                                        </small>
                                    </div>
                                    <h5 class="card-title fw-bold mb-3">
                                        <i class="fas <%= icons[i-1] %> me-2" style="color: <%= colores[i-1] %>; text-shadow: 0 0 10px <%= colores[i-1] %>;"></i>
                                        <%= titulos[i-1] %>
                                    </h5>
                                    <p class="card-text text-muted flex-grow-1"><%= desc[i-1] %></p>
                                    <a href="semanas/semana<%= i %>.jsp" class="btn btn-outline-primary w-100 mt-3">
                                        <i class="fas fa-play me-2"></i> Ver Proyecto
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                <% } %>
            </div>
        </div>
    </section>

    <!-- CONTACTO -->
    <section id="contacto" class="contacto-section">
        <div class="container py-5">
            <h2 class="text-center fw-bold mb-3" style="font-family: 'Orbitron', sans-serif; color: #00f3ff; text-shadow: 0 0 20px #00f3ff;">
                <i class="fas fa-envelope me-2"></i>Contáctame
            </h2>
            <p class="text-center text-muted mb-5">¿Interesado en mi trabajo? ¡Hablemos!</p>

            <div class="row g-5">
                <div class="col-md-6">
                    <div class="contact-form">
                        <h4 class="mb-4" style="font-family: 'Orbitron', sans-serif; color: #00f3ff;">Envíame un mensaje</h4>
                        <form onsubmit="enviarMensaje(event)">
                            <div class="mb-3">
                                <input type="text" class="form-control" placeholder="Tu nombre" required>
                            </div>
                            <div class="mb-3">
                                <input type="email" class="form-control" placeholder="Tu email" required>
                            </div>
                            <div class="mb-3">
                                <input type="text" class="form-control" placeholder="Asunto" required>
                            </div>
                            <div class="mb-3">
                                <textarea class="form-control" rows="5" placeholder="Tu mensaje" required></textarea>
                            </div>
                            <button type="submit" class="btn w-100 py-3" style="background: linear-gradient(45deg, #00f3ff, #bc13fe); color: #fff; font-family: 'Orbitron', sans-serif; border: none;">
                                <i class="fas fa-paper-plane me-2"></i>Enviar Mensaje
                            </button>
                        </form>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="contact-form h-100">
                        <h4 class="mb-4" style="font-family: 'Orbitron', sans-serif; color: #00f3ff;">Información de Contacto</h4>
                        
                        <div class="mb-4">
                            <h6 style="color: #00f3ff;"><i class="fas fa-user me-2"></i>Nombre</h6>
                            <p class="text-muted">Axel Caparo</p>
                        </div>
                        
                        <div class="mb-4">
                            <h6 style="color: #00f3ff;"><i class="fab fa-whatsapp me-2"></i>WhatsApp</h6>
                            <p class="text-muted">
                                <a href="https://wa.me/51920523268" target="_blank" style="color: #25d366; text-decoration: none;">
                                    +51 920 523 268
                                </a>
                            </p>
                        </div>
                        
                        <div class="mb-4">
                            <h6 style="color: #00f3ff;"><i class="fas fa-envelope me-2"></i>Email</h6>
                            <p class="text-muted">axel.caparo@email.com</p>
                        </div>
                        
                        <div class="mb-4">
                            <h6 style="color: #00f3ff;"><i class="fas fa-map-marker-alt me-2"></i>Ubicación</h6>
                            <p class="text-muted">Perú</p>
                        </div>
                        
                        <div class="mb-4">
                            <h6 style="color: #00f3ff;"><i class="fas fa-graduation-cap me-2"></i>Estudios</h6>
                            <p class="text-muted">Ingeniería de Software</p>
                        </div>
                        
                        <div class="mt-4">
                            <h6 style="color: #00f3ff; margin-bottom: 15px;">Sígueme en:</h6>
                            <div class="footer-social">
                                <a href="#"><i class="fab fa-github"></i></a>
                                <a href="#"><i class="fab fa-linkedin"></i></a>
                                <a href="https://wa.me/51920523268" target="_blank"><i class="fab fa-whatsapp"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- FOOTER -->
    <footer class="footer-section">
        <div class="container">
            <div class="text-center mb-4">
                <h4 style="font-family: 'Orbitron', sans-serif; color: #00f3ff; text-shadow: 0 0 20px #00f3ff;">
                    <i class="fas fa-code me-2"></i>Axel Caparo
                </h4>
                <p class="text-muted">Desarrollador Web Java & JSP</p>
            </div>
            
            <div class="text-center footer-social mb-4">
                <a href="#"><i class="fab fa-github"></i></a>
                <a href="#"><i class="fab fa-linkedin"></i></a>
                <a href="https://wa.me/51920523268" target="_blank"><i class="fab fa-whatsapp"></i></a>
                <a href="#"><i class="fab fa-instagram"></i></a>
                <a href="#"><i class="fab fa-facebook"></i></a>
            </div>
            
            <div class="text-center border-top pt-3" style="border-color: rgba(0, 243, 255, 0.3) !important;">
                <p class="mb-1">
                    <i class="fas fa-heart text-danger"></i> Desarrollado con Java, JSP y MySQL
                </p>
                <p class="text-muted small mb-0">
                    &copy; 2026 Axel Caparo. Todos los derechos reservados.
                </p>
            </div>
        </div>
    </footer>

    <!-- BOTÓN WHATSAPP FLOTANTE -->
    <a href="https://wa.me/51920523268" class="whatsapp-btn" target="_blank" title="Contáctame por WhatsApp">
        <i class="fab fa-whatsapp"></i>
    </a>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    
    <!-- SCRIPTS MEGA ÉPICOS -->
    <script>
        // ========================================
        // VARIABLES GLOBALES
        // ========================================
        let visitedWeeks = new Set();
        let achievements = {
            1: false, 2: false, 3: false, 4: false, 5: false,
            6: false, 7: false, 8: false, 9: false, 10: false
        };
        let gameScore = 0;
        let gameActive = false;
        let xp = 0;
        let mouseX = 0, mouseY = 0;
        let lastTrailTime = 0;

        // ========================================
        // SISTEMA DE XP
        // ========================================
        function addXP(amount) {
            xp = Math.min(1000, xp + amount);
            document.getElementById('xp-bar').style.width = (xp / 10) + '%';
            document.getElementById('xp-text').textContent = `XP: ${xp} / 1000`;
            
            if (xp >= 500 && !achievements[9]) {
                unlockAchievement(9); // Veloz
            }
        }

        // ========================================
        // 1. CURSOR PERSONALIZADO
        // ========================================
        const cursor = document.getElementById('cursor');
        const cursorDot = document.getElementById('cursor-dot');
        
        document.addEventListener('mousemove', (e) => {
            cursor.style.left = e.clientX + 'px';
            cursor.style.top = e.clientY + 'px';
            cursorDot.style.left = e.clientX + 'px';
            cursorDot.style.top = e.clientY + 'px';
            
            mouseX = e.clientX;
            mouseY = e.clientY;
            
            // Trail de colores
            const now = Date.now();
            if (now - lastTrailTime > 50) {
                createTrail(e.clientX, e.clientY);
                lastTrailTime = now;
            }
        });
        
        document.addEventListener('mousedown', () => {
            cursor.style.transform = 'scale(0.8)';
        });
        
        document.addEventListener('mouseup', () => {
            cursor.style.transform = 'scale(1)';
        });

        // ========================================
        // 2. TRAIL DE COLORES
        // ========================================
        function createTrail(x, y) {
            const trail = document.createElement('div');
            trail.className = 'trail';
            trail.style.left = x + 'px';
            trail.style.top = y + 'px';
            
            const colors = ['#00f3ff', '#bc13fe', '#ff006e', '#39ff14'];
            trail.style.background = colors[Math.floor(Math.random() * colors.length)];
            trail.style.boxShadow = `0 0 10px ${trail.style.background}`;
            
            document.body.appendChild(trail);
            
            setTimeout(() => {
                trail.remove();
            }, 1000);
        }

        // ========================================
        // 3. MATRIX RAIN EFFECT
        // ========================================
        const canvas = document.getElementById('matrix-canvas');
        const ctx = canvas.getContext('2d');
        
        canvas.width = window.innerWidth;
        canvas.height = window.innerHeight;
        
        const letters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789@#$%^&*()';
        const fontSize = 14;
        const columns = canvas.width / fontSize;
        const drops = [];
        
        for (let i = 0; i < columns; i++) {
            drops[i] = 1;
        }
        
        function drawMatrix() {
            ctx.fillStyle = 'rgba(10, 10, 15, 0.05)';
            ctx.fillRect(0, 0, canvas.width, canvas.height);
            
            ctx.fillStyle = '#00f3ff';
            ctx.font = fontSize + 'px monospace';
            
            for (let i = 0; i < drops.length; i++) {
                const text = letters[Math.floor(Math.random() * letters.length)];
                ctx.fillText(text, i * fontSize, drops[i] * fontSize);
                
                if (drops[i] * fontSize > canvas.height && Math.random() > 0.975) {
                    drops[i] = 0;
                }
                drops[i]++;
            }
        }
        
        setInterval(drawMatrix, 35);
        
        window.addEventListener('resize', () => {
            canvas.width = window.innerWidth;
            canvas.height = window.innerHeight;
        });

        // ========================================
        // 4. PARTÍCULAS FLOTANTES
        // ========================================
        const particlesContainer = document.getElementById('particles');
        
        function createParticle() {
            const particle = document.createElement('div');
            particle.className = 'particle';
            particle.style.left = Math.random() * 100 + '%';
            particle.style.animationDuration = (Math.random() * 10 + 10) + 's';
            particle.style.animationDelay = Math.random() * 5 + 's';
            
            const colors = ['#00f3ff', '#bc13fe', '#ff006e', '#39ff14'];
            particle.style.background = colors[Math.floor(Math.random() * colors.length)];
            particle.style.boxShadow = `0 0 10px ${particle.style.background}`;
            
            particlesContainer.appendChild(particle);
            
            setTimeout(() => {
                particle.remove();
            }, 20000);
        }
        
        setInterval(createParticle, 500);

        // ========================================
        // 5. LOADER
        // ========================================
        window.addEventListener('load', () => {
            setTimeout(() => {
                document.getElementById('loader').classList.add('hidden');
                unlockAchievement(1); // Primer Paso
                addXP(100);
            }, 2000);
        });

        // ========================================
        // 6. EFECTO TYPING EN EL TÍTULO
        // ========================================
        const titulo = document.getElementById('titulo-hero');
        if (titulo) {
            const textoOriginal = titulo.textContent;
            titulo.textContent = '';
            titulo.style.borderRight = '3px solid #00f3ff';
            
            setTimeout(() => {
                let i = 0;
                const typeWriter = () => {
                    if (i < textoOriginal.length) {
                        titulo.textContent += textoOriginal.charAt(i);
                        i++;
                        setTimeout(typeWriter, 80);
                    } else {
                        setTimeout(() => {
                            titulo.style.borderRight = 'none';
                        }, 1000);
                    }
                };
                typeWriter();
            }, 2500);
        }

        // ========================================
        // 7. CONTADOR ANIMADO
        // ========================================
        const statBoxes = document.querySelectorAll('[data-count]');
        const observerStats = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const target = entry.target;
                    const finalCount = parseInt(target.getAttribute('data-count'));
                    let current = 0;
                    const increment = finalCount / 50;
                    
                    const updateCount = () => {
                        if (current < finalCount) {
                            current += increment;
                            target.textContent = Math.ceil(current) + (finalCount === 100 ? '%' : '+');
                            requestAnimationFrame(updateCount);
                        } else {
                            target.textContent = finalCount + (finalCount === 100 ? '%' : '+');
                        }
                    };
                    updateCount();
                    observerStats.unobserve(target);
                }
            });
        }, { threshold: 0.5 });

        statBoxes.forEach(box => observerStats.observe(box));

        // ========================================
        // 8. BARRAS DE HABILIDADES ANIMADAS
        // ========================================
        const skillBars = document.querySelectorAll('.skill-progress');
        const observerSkills = new IntersectionObserver((entries) => {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    const skill = entry.target;
                    const percent = skill.getAttribute('data-skill');
                    skill.style.width = percent + '%';
                    observerSkills.unobserve(skill);
                }
            });
        }, { threshold: 0.5 });

        skillBars.forEach(bar => {
            bar.style.width = '0%';
            observerSkills.observe(bar);
        });

        // ========================================
        // 9. ANIMACIÓN AL HACER SCROLL
        // ========================================
        const observerOptions = {
            threshold: 0.1,
            rootMargin: "0px 0px -50px 0px"
        };

        const observer = new IntersectionObserver(function(entries) {
            entries.forEach(entry => {
                if (entry.isIntersecting) {
                    entry.target.style.opacity = "1";
                    entry.target.style.transform = "translateY(0)";
                }
            });
        }, observerOptions);

        document.querySelectorAll('.animate-fadeInUp, .timeline-item').forEach(el => {
            observer.observe(el);
        });

        // ========================================
        // 10. SCROLL SUAVE
        // ========================================
        document.querySelectorAll('a[href^="#"]').forEach(anchor => {
            anchor.addEventListener('click', function (e) {
                const href = this.getAttribute('href');
                if (href === '#') return;
                e.preventDefault();
                const target = document.querySelector(href);
                if (target) {
                    target.scrollIntoView({
                        behavior: 'smooth',
                        block: 'start'
                    });
                }
            });
        });

        // ========================================
        // 11. EFECTO PARALLAX
        // ========================================
        window.addEventListener('scroll', () => {
            const scrolled = window.pageYOffset;
            const hero = document.querySelector('.hero-section');
            if (hero && scrolled < window.innerHeight) {
                hero.style.transform = `translateY(${scrolled * 0.3}px)`;
                hero.style.opacity = 1 - (scrolled / window.innerHeight);
            }
        });

        // ========================================
        // 12. FUEGOS ARTIFICIALES AL CLIC
        // ========================================
        document.addEventListener('click', (e) => {
            createFireworks(e.clientX, e.clientY);
            addXP(5);
        });
        
        function createFireworks(x, y) {
            const colors = ['#00f3ff', '#bc13fe', '#ff006e', '#39ff14', '#ffff00'];
            
            for (let i = 0; i < 20; i++) {
                const firework = document.createElement('div');
                firework.className = 'firework';
                firework.style.left = x + 'px';
                firework.style.top = y + 'px';
                firework.style.background = colors[Math.floor(Math.random() * colors.length)];
                firework.style.boxShadow = `0 0 10px ${firework.style.background}`;
                
                const angle = (Math.PI * 2 * i) / 20;
                const velocity = 100 + Math.random() * 50;
                const tx = Math.cos(angle) * velocity;
                const ty = Math.sin(angle) * velocity;
                
                firework.style.transition = 'all 1s ease-out';
                document.body.appendChild(firework);
                
                setTimeout(() => {
                    firework.style.transform = `translate(${tx}px, ${ty}px)`;
                    firework.style.opacity = '0';
                }, 10);
                
                setTimeout(() => {
                    firework.remove();
                }, 1000);
            }
            
            if (!achievements[7]) {
                unlockAchievement(7); // Explosivo
            }
        }

        // ========================================
        // 13. MODO CLARO/OSCURO TOGGLE
        // ========================================
        const themeToggle = document.getElementById('theme-toggle');
        const themeIcon = themeToggle.querySelector('i');
        
        themeToggle.addEventListener('click', () => {
            document.body.classList.toggle('light-mode');
            
            if (document.body.classList.contains('light-mode')) {
                themeIcon.className = 'fas fa-sun';
            } else {
                themeIcon.className = 'fas fa-moon';
            }
            
            addXP(20);
            if (!achievements[6]) {
                unlockAchievement(6); // Artista
            }
        });

        // ========================================
        // 14. CONTROL DE MÚSICA
        // ========================================
        const musicControl = document.getElementById('music-control');
        const bgMusic = document.getElementById('bg-music');
        const musicIcon = musicControl.querySelector('i');
        const musicVisualizer = document.getElementById('music-visualizer');
        let isPlaying = false;
        
        musicControl.addEventListener('click', () => {
            if (isPlaying) {
                bgMusic.pause();
                musicIcon.className = 'fas fa-music';
                musicControl.classList.remove('playing');
                musicVisualizer.classList.remove('active');
            } else {
                bgMusic.play();
                musicIcon.className = 'fas fa-pause';
                musicControl.classList.add('playing');
                musicVisualizer.classList.add('active');
                unlockAchievement(4); // DJ
            }
            isPlaying = !isPlaying;
            addXP(30);
        });

        // ========================================
        // 15. CHAT FLOTANTE
        // ========================================
        const chatToggle = document.getElementById('chat-toggle');
        const chatBox = document.getElementById('chat-box');
        const chatMessages = document.getElementById('chat-messages');
        const chatInput = document.getElementById('chat-input');
        const chatSend = document.getElementById('chat-send');
        
        chatToggle.addEventListener('click', () => {
            chatBox.classList.toggle('active');
            unlockAchievement(5); // Social
            addXP(25);
        });
        
        function addMessage(text, isUser) {
            const message = document.createElement('div');
            message.className = `chat-message ${isUser ? 'user' : 'bot'}`;
            message.textContent = text;
            chatMessages.appendChild(message);
            chatMessages.scrollTop = chatMessages.scrollHeight;
        }
        
        function getBotResponse(userMessage) {
            const responses = {
                'hola': '¡Hola! ¿Cómo estás? 👋',
                'proyectos': 'Tengo 16 proyectos increíbles. ¡Revisa la sección de semanas!',
                'tecnologias': 'Uso Java, JSP, MySQL, HTML, CSS, JavaScript y más 💻',
                'contacto': 'Puedes contactarme por WhatsApp: +51 920 523 268 📱',
                'whatsapp': 'Mi número es +51 920 523 268 📱',
                'habilidades': 'Mis habilidades incluyen Java (95%), JSP (90%), MySQL (85%) 💪',
                'semanas': 'Hay 16 semanas con proyectos progresivos. ¡Explóralas!',
                'java': 'Java es mi lenguaje principal. ¡Es genial para desarrollo web! ☕',
                'jsp': 'JSP me permite crear páginas web dinámicas con Java 🌐',
                'mysql': 'MySQL es la base de datos que uso para almacenar información 🗄️',
                'logros': 'Presiona L para ver tus logros. ¡Hay 10 para desbloquear! 🏆',
                'juego': 'Presiona G para jugar el mini-juego oculto 🎮',
                'musica': 'Haz clic en el botón morado para activar la música 🎵',
                'tema': 'Haz clic en el botón verde para cambiar entre modo claro y oscuro 🌙',
                'arcoiris': 'Presiona R para activar el modo arcoíris 🌈',
                'controles': 'Baja a la sección de Controles para ver todas las acciones disponibles ⌨️',
                'axel': 'Soy Axel Caparo, desarrollador web de Perú 🇵🇪',
                'default': 'Interesante... ¿Puedes decirme más? 🤔'
            };
            
            const lowerMessage = userMessage.toLowerCase();
            
            for (let key in responses) {
                if (lowerMessage.includes(key)) {
                    return responses[key];
                }
            }
            
            return responses.default;
        }
        
        chatSend.addEventListener('click', sendMessage);
        chatInput.addEventListener('keypress', (e) => {
            if (e.key === 'Enter') sendMessage();
        });
        
        function sendMessage() {
            const message = chatInput.value.trim();
            if (message) {
                addMessage(message, true);
                chatInput.value = '';
                
                setTimeout(() => {
                    const response = getBotResponse(message);
                    addMessage(response, false);
                }, 1000);
            }
        }

        // ========================================
        // 16. SISTEMA DE LOGROS
        // ========================================
        function unlockAchievement(id) {
            if (!achievements[id]) {
                achievements[id] = true;
                const achievement = document.getElementById(`achievement-${id}`);
                achievement.classList.add('unlocked');
                
                const names = {
                    1: 'Primer Paso',
                    2: 'Explorador',
                    3: 'Gamer',
                    4: 'DJ',
                    5: 'Social',
                    6: 'Artista',
                    7: 'Explosivo',
                    8: 'Arcoíris',
                    9: 'Veloz',
                    10: 'Maestro'
                };
                
                showAchievementNotification(names[id]);
                createConfetti();
                addXP(100);
                
                // Verificar si todos están desbloqueados
                const allUnlocked = Object.values(achievements).every(v => v);
                if (allUnlocked && !achievements[10]) {
                    setTimeout(() => unlockAchievement(10), 1000);
                }
            }
        }
        
        function showAchievementNotification(name) {
            const notification = document.getElementById('achievement-notification');
            const achievementName = document.getElementById('achievement-name');
            achievementName.textContent = name;
            notification.classList.add('show');
            
            setTimeout(() => {
                notification.classList.remove('show');
            }, 3000);
        }
        
        // Mostrar panel de logros con tecla 'L'
        document.addEventListener('keydown', (e) => {
            if (e.key === 'l' || e.key === 'L') {
                document.getElementById('achievements-panel').classList.toggle('active');
            }
        });

        // ========================================
        // 17. CONFETTI
        // ========================================
        function createConfetti() {
            const colors = ['#00f3ff', '#bc13fe', '#ff006e', '#39ff14', '#ffff00'];
            
            for (let i = 0; i < 50; i++) {
                const confetti = document.createElement('div');
                confetti.className = 'confetti';
                confetti.style.left = Math.random() * 100 + '%';
                confetti.style.background = colors[Math.floor(Math.random() * colors.length)];
                confetti.style.animationDelay = Math.random() * 2 + 's';
                confetti.style.animationDuration = (Math.random() * 2 + 2) + 's';
                
                document.body.appendChild(confetti);
                
                setTimeout(() => {
                    confetti.remove();
                }, 4000);
            }
        }

        // ========================================
        // 18. MINI-JUEGO OCULTO
        // ========================================
        const miniGame = document.getElementById('mini-game');
        const gameArea = document.getElementById('game-area');
        const player = document.getElementById('player');
        const gameScoreEl = document.getElementById('game-score');
        const gameClose = document.getElementById('game-close');
        
        // Activar juego con tecla 'G'
        document.addEventListener('keydown', (e) => {
            if (e.key === 'g' || e.key === 'G') {
                if (!miniGame.classList.contains('active')) {
                    startGame();
                }
            }
        });
        
        function startGame() {
            miniGame.classList.add('active');
            gameActive = true;
            gameScore = 0;
            gameScoreEl.textContent = '0';
            
            player.style.left = '185px';
            player.style.top = '300px';
            
            spawnTarget();
            unlockAchievement(3); // Gamer
            addXP(50);
        }
        
        function spawnTarget() {
            if (!gameActive) return;
            
            const target = document.createElement('div');
            target.className = 'target';
            target.style.left = Math.random() * 350 + 'px';
            target.style.top = Math.random() * 300 + 60 + 'px';
            
            target.addEventListener('click', () => {
                gameScore++;
                gameScoreEl.textContent = gameScore;
                target.remove();
                spawnTarget();
                addXP(10);
            });
            
            gameArea.appendChild(target);
            
            setTimeout(() => {
                if (target.parentNode) {
                    target.remove();
                    spawnTarget();
                }
            }, 2000);
        }
        
        // Mover jugador con teclado
        document.addEventListener('keydown', (e) => {
            if (!gameActive) return;
            
            const speed = 20;
            let left = parseInt(player.style.left);
            let top = parseInt(player.style.top);
            
            switch(e.key) {
                case 'ArrowLeft':
                    left = Math.max(0, left - speed);
                    break;
                case 'ArrowRight':
                    left = Math.min(370, left + speed);
                    break;
                case 'ArrowUp':
                    top = Math.max(60, top - speed);
                    break;
                case 'ArrowDown':
                    top = Math.min(370, top + speed);
                    break;
            }
            
            player.style.left = left + 'px';
            player.style.top = top + 'px';
        });
        
        gameClose.addEventListener('click', () => {
            miniGame.classList.remove('active');
            gameActive = false;
            const targets = gameArea.querySelectorAll('.target');
            targets.forEach(t => t.remove());
        });

        // ========================================
        // 19. MODO ARCOÍRIS
        // ========================================
        document.addEventListener('keydown', (e) => {
            if (e.key === 'r' || e.key === 'R') {
                document.body.classList.toggle('rainbow-mode');
                addXP(40);
                if (!achievements[8]) {
                    unlockAchievement(8); // Arcoíris
                }
            }
        });

        // ========================================
        // 20. RASTREAR VISITAS A SEMANAS
        // ========================================
        document.querySelectorAll('.dropdown-item').forEach(link => {
            link.addEventListener('click', () => {
                const weekNum = link.textContent.match(/\d+/)[0];
                visitedWeeks.add(weekNum);
                addXP(30);
                
                if (visitedWeeks.size >= 3 && !achievements[2]) {
                    unlockAchievement(2); // Explorador
                }
            });
        });

        // ========================================
        // 21. FORMULARIO DE CONTACTO
        // ========================================
        function enviarMensaje(e) {
            e.preventDefault();
            alert('✅ ¡Mensaje enviado! Te contactaré pronto por WhatsApp.');
            e.target.reset();
            addXP(50);
        }

        // ========================================
        // 22. MENSAJE EN CONSOLA (Easter Egg)
        // ========================================
        console.log('%c🎮 PORTAFOLIO MEGA ÉPICO 🎮', 'color: #00f3ff; font-size: 50px; font-weight: bold; text-shadow: 0 0 30px #00f3ff;');
        console.log('%cDesarrollado por Axel Caparo', 'color: #bc13fe; font-size: 20px;');
        console.log('%cWhatsApp: +51 920 523 268', 'color: #25d366; font-size: 18px;');
        console.log('%c🔥 POWER LEVEL: OVER 9000 🔥', 'color: #ff006e; font-size: 25px; font-weight: bold;');
        console.log('%c💡 Tips:', 'color: #00f3ff; font-size: 16px;');
        console.log('%c  - L: Logros', 'color: #39ff14; font-size: 14px;');
        console.log('%c  - G: Mini-juego', 'color: #39ff14; font-size: 14px;');
        console.log('%c  - R: Modo arcoíris', 'color: #39ff14; font-size: 14px;');
        console.log('%c  - Clic: Fuegos artificiales', 'color: #39ff14; font-size: 14px;');
    </script>
</body>
</html>
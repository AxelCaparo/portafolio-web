<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es" data-bs-theme="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Semana 16 - Sistema de Asistencia | Axel Caparo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link rel="stylesheet" href="../css/estilo.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center mb-4 text-gradient">
            <i class="fa fa-calendar-check"></i> Semana 16
        </h1>
        
        <div class="card glass-card mb-4">
            <div class="card-body text-center">
                <h5 class="card-title mb-3">
                    <i class="fa fa-user-check"></i> Sistema de Asistencia con PHP
                </h5>
                <p class="card-text mb-4">
                    Sistema completo de control de asistencia con registro de entradas y salidas, 
                    reportes y estadísticas. Desarrollado con PHP y MySQL.
                </p>
                
                <div class="d-grid gap-2 d-md-flex justify-content-md-center">
                    <a href="https://sistema-asistencia-cajas.onrender.com/asistencia" target="_blank" class="btn btn-success btn-lg">
                        <i class="fa fa-external-link-alt"></i> Acceder al Sistema de Asistencia
                    </a>
                    
                    <a href="../index.jsp" class="btn btn-secondary">
                        <i class="fa fa-arrow-left"></i> Volver al Inicio
                    </a>
                </div>
            </div>
        </div>
        
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card feature-card">
                    <div class="card-body text-center">
                        <i class="fa fa-sign-in-alt fa-3x mb-3 text-primary"></i>
                        <h6>Registro de Asistencia</h6>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card feature-card">
                    <div class="card-body text-center">
                        <i class="fa fa-chart-bar fa-3x mb-3 text-success"></i>
                        <h6>Reportes y Estadísticas</h6>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card feature-card">
                    <div class="card-body text-center">
                        <i class="fa fa-database fa-3x mb-3 text-info"></i>
                        <h6>Base de Datos MySQL</h6>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
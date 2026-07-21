<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<nav class="navbar navbar-expand-lg">
    <div class="container">
        <a class="navbar-brand" href="${pageContext.request.contextPath}/index.jsp">
            <i class="fas fa-laptop-code"></i> Mi Portafolio
        </a>
        
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navSemanas">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navSemanas">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <a class="nav-link" href="${pageContext.request.contextPath}/index.jsp">
                        <i class="fas fa-home"></i> Inicio
                    </a>
                </li>
                
                <li class="nav-item">
                    <a class="nav-link" href="#perfil">
                        <i class="fas fa-user"></i> Perfil
                    </a>
                </li>
                
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" 
                       data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fas fa-calendar-alt"></i> Semanas
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <% for (int i = 1; i <= 9; i++) { %>
                            <li>
                                <a class="dropdown-item" 
                                   href="${pageContext.request.contextPath}/semanas/semana<%= i %>.jsp">
                                    Semana <%= i %>
                                </a>
                            </li>
                        <% } %>
                    </ul>
                </li>

                <li class="nav-item">
                    <a class="nav-link" href="#contacto">
                        <i class="fas fa-envelope"></i> Contacto
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
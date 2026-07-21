<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<footer id="contacto">
    <div class="container">
        <div class="footer-content">
            <div class="footer-section">
                <h4><i class="fas fa-code"></i> Mi Portafolio</h4>
                <p>Desarrollo web con Java Server Pages (JSP) y tecnologías modernas.</p>
                <div class="social-links">
                    <a href="#" title="GitHub"><i class="fab fa-github"></i></a>
                    <a href="#" title="LinkedIn"><i class="fab fa-linkedin"></i></a>
                    <a href="https://wa.me/51999999999" title="WhatsApp"><i class="fab fa-whatsapp"></i></a>
                </div>
            </div>
            
            <div class="footer-section">
                <h4><i class="fas fa-link"></i> Enlaces Rápidos</h4>
                <p><a href="${pageContext.request.contextPath}/index.jsp">Inicio</a></p>
                <p><a href="#semanas">Semanas</a></p>
                <p><a href="#contacto">Contacto</a></p>
            </div>
            
            <div class="footer-section">
                <h4><i class="fas fa-envelope"></i> Contacto</h4>
                <p><i class="fas fa-envelope"></i> correo@ejemplo.com</p>
                <p><i class="fas fa-phone"></i> +51 999 999 999</p>
                <p><i class="fas fa-map-marker-alt"></i> Lima, Perú</p>
            </div>
        </div>
        
        <div class="footer-bottom">
            <p>&copy; <%= new java.util.Date().getYear() + 1900 %> - Mi Portafolio Web JSP | 
               Desarrollado con <i class="fas fa-heart text-danger"></i> y Java</p>
        </div>
    </div>
</footer>
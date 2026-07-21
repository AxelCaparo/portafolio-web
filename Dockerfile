FROM tomcat:9.0-jdk11-openjdk-slim

# Eliminar las aplicaciones de ejemplo por defecto de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copiar el contenido de tu carpeta 'web' a la raíz del servidor web
COPY web/ /usr/local/tomcat/webapps/ROOT/

# Exponer el puerto por defecto de Tomcat
EXPOSE 8080

CMD ["catalina.sh", "run"]

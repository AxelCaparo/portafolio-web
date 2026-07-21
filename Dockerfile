FROM tomcat:9.0-jdk11-openjdk-slim

# Reemplaza la configuración predeterminada de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copia el archivo WAR compilado a la raíz
COPY dist/*.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

FROM tomcat:9.0-jdk11-openjdk-slim

# Limpiar aplicaciones predeterminadas
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copiar el archivo WAR de la carpeta dist
COPY dist/*.war /usr/local/tomcat/webapps/ROOT.war

# Reemplazar el puerto 8080 de Tomcat por la variable $PORT de Railway al arrancar
CMD sed -i "s/8080/${PORT:-8080}/g" /usr/local/tomcat/conf/server.xml && catalina.sh run

FROM tomcat:9.0-jdk11-openjdk-slim

# Limpiar apps por defecto
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copiar el archivo .war compilado de NetBeans
COPY dist/*.war /usr/local/tomcat/webapps/ROOT.war

# Forzar IPv4 en Tomcat para evitar bloqueos de red interna
ENV JAVA_OPTS="-Djava.net.preferIPv4Stack=true -Djava.net.preferIPv4Addresses=true"

# Reemplazar la linea del conector en server.xml para obligar a escuchar en 0.0.0.0 y en el $PORT de Railway
CMD sed -i 's/<Connector port="8080"/<Connector port="'"${PORT:-8080}"'" address="0.0.0.0"/g' /usr/local/tomcat/conf/server.xml && catalina.sh run

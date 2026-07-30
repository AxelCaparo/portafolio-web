FROM tomcat:9.0-jdk21

# Limpiar apps por defecto
RUN rm -rf /usr/local/tomcat/webapps/ROOT

# Copiar el WAR
COPY dist/*.war /usr/local/tomcat/webapps/ROOT.war

# AGREGADO: Forzar copia de los archivos de código directamente al servidor
COPY web/semanas/ /usr/local/tomcat/webapps/ROOT/semanas/

# Forzar IPv4
ENV JAVA_OPTS="-Djava.net.preferIPv4Stack=true -Djava.net.preferIPv4Addresses=true"

# Iniciar Tomcat
CMD sed -i 's/<Connector port="8080"/<Connector port="'"${PORT:-8080}"'" address="0.0.0.0"/g' /usr/local/tomcat/conf/server.xml && catalina.sh run

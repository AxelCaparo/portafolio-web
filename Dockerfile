FROM tomcat:9.0-jdk21

# Copiar el WAR como ROOT
COPY dist/*.war /usr/local/tomcat/webapps/ROOT.war

# Forzar IPv4
ENV JAVA_OPTS="-Djava.net.preferIPv4Stack=true"

# Iniciar Tomcat
CMD ["catalina.sh", "run"]

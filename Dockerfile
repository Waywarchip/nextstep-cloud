# Tomcat 10.1 con JDK 21
FROM tomcat:10.1-jdk21-openjdk-slim

# Limpiar aplicaciones basura
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiar el proyecto compilado
COPY NextStepWeb.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

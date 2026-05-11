# Usamos Tomcat 10 con JDK 21 para que coincida con tu versión de NetBeans
FROM tomcat:10.1-jdk21-openjdk-slim

# Limpiamos la carpeta de aplicaciones de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu archivo .war
COPY NextStepWeb.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080

CMD ["catalina.sh", "run"]

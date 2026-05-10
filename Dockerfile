# Usamos Tomcat 10.1 que es el estándar para Jakarta EE
FROM tomcat:10.1-jdk17-openjdk-slim

# Limpiamos la carpeta de aplicaciones de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu archivo .war y lo renombramos a ROOT para la raíz
COPY NextStepWeb.war /usr/local/tomcat/webapps/ROOT.war

# Exponemos el puerto
EXPOSE 8080

# Arrancamos el servidor
CMD ["catalina.sh", "run"]

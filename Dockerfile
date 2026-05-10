# Usamos una imagen de Tomcat compatible con Java
FROM tomcat:9.0-jdk15-openjdk-slim

# Limpiamos la carpeta de aplicaciones predeterminada de Tomcat
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu archivo y lo renombramos a ROOT.war para que sea la página principal
COPY NextStepWeb.war /usr/local/tomcat/webapps/ROOT.war

# Informamos el puerto que usará el contenedor
EXPOSE 8080

# Comando para iniciar el servidor Tomcat
CMD ["catalina.sh", "run"]

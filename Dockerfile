# Usamos una imagen oficial de Tomcat que ya tiene Java instalado
FROM tomcat:9.0-jdk15-openjdk-slim

# Borramos los archivos de prueba de Tomcat para que no estorben
RUN rm -rf /usr/local/tomcat/webapps/*

# Copiamos tu archivo ROOT.war a la carpeta de aplicaciones de Tomcat
COPY ROOT.war /usr/local/tomcat/webapps/ROOT.war

# Exponemos el puerto 8080 (el que usa Tomcat por defecto)
EXPOSE 8080

# Arrancamos el servidor
CMD ["catalina.sh", "run"]

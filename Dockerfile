# Utilise l'image officielle Java
FROM openjdk:17-jdk-slim

# Dossier de travail
WORKDIR /app

# Copie le JAR compilé
COPY target/mon-app.jar app.jar

# Port exposé (à adapter selon ton app)
EXPOSE 8080

# Commande de démarrage
CMD ["java", "-jar", "app.jar"]


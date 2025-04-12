# Utilise une image Java officielle
FROM openjdk:17-jdk-slim

# Crée un dossier pour l'app
WORKDIR /app

# Copie ton fichier JAR dans le conteneur
COPY target/mon-app.jar app.jar

# Expose le port si besoin (optionnel)
EXPOSE 8080

# Commande de démarrage
CMD ["java", "-jar", "app.jar"]



# Utiliser l'image de Maven pour compiler le projet
FROM maven:3.8.1-openjdk-11 AS build

# Copier le code source dans le conteneur
WORKDIR /app
COPY . .

# Compiler l'application avec Maven
RUN mvn clean install

# Utiliser une image Java pour exécuter l'application
FROM openjdk:11-jre-slim

# Copier le fichier JAR généré depuis l'image de build
COPY --from=build /app/target/*.jar /app/traccar.jar

# Exposer le port sur lequel l'application s'exécute
EXPOSE 8082

# Commande pour démarrer l'application
ENTRYPOINT ["java", "-jar", "/app/traccar.jar"]

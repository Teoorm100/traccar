FROM traccar/traccar:latest

# Exposer le port 8082 pour l'interface web de Traccar
EXPOSE 8082

# Indiquer à Render d'utiliser ce port
CMD ["sh", "-c", "java -jar /opt/traccar/traccar.jar --web.port 8082"]

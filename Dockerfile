# Utiliser l'image officielle de Traccar
FROM traccar/traccar:latest

# Exposer le port 8082 pour l'interface web
EXPOSE 8082

# Démarrer Traccar sur le port 8082
CMD ["java", "-jar", "/opt/traccar/traccar.jar", "--web.port", "8082"]

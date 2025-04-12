# Utiliser l'image officielle de Traccar
FROM traccar/traccar:latest

# Exposer le port 8082 pour l'interface web
EXPOSE 8082

# S'assurer que le service Traccar écoute sur le port 8082
CMD ["sh", "-c", "exec /opt/traccar/bin/traccar.xml -web.port 8082"]

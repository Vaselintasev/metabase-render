# Utiliser une image Java officielle
FROM openjdk:17-jdk-slim

# Télécharger la dernière version stable de Metabase
RUN wget https://downloads.metabase.com/v0.50.4/metabase.jar -O /app/metabase.jar

# Définir le répertoire de travail
WORKDIR /app

# Exposer le port utilisé par Metabase
EXPOSE 3000

# Démarrer Metabase
CMD ["java", "-jar", "metabase.jar"]

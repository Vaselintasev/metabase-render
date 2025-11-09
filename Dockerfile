# ✅ Image compatible Render Free Tier (Java 17 + Debian)
FROM eclipse-temurin:17-jdk-jammy

# Créer un dossier de travail
WORKDIR /app

# Télécharger la dernière version stable de Metabase
RUN apt-get update && apt-get install -y wget && \
    wget https://downloads.metabase.com/v0.50.4/metabase.jar -O metabase.jar && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Exposer le port par défaut de Metabase
EXPOSE 3000

# Démarrer Metabase
CMD ["java", "-jar", "metabase.jar"]

# Starte von einem offiziellen MySQL-Image
FROM mysql:8.0

# Setze den Root-Benutzernamen und das Passwort
ENV MYSQL_ROOT_PASSWORD=secret
ENV MYSQL_USER=myuser
ENV MYSQL_PASSWORD=mypassword

# Erstelle eine neue Datenbank
ENV MYSQL_DATABASE=mydatabase

# Kopiere die SQL-Skripte in den Container
COPY initdb.sql /docker-entrypoint-initdb.d/

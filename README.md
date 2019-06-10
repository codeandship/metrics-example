Metrics Example
===

# Voraussetzungen

- `docker` und `docker-compose` installiert


# Demo starten

1. Repository clonen
2. `docker-compose pull && docker-compose up` ausführen
3. [Grafana](http://localhost:3000/) aufrufen
4. Einloggen
	- User: `admin`
	- Passwort: `admin`
5. Prometheus als Datenquelle einbinden:
	- Reiter Settings:
		- Unter "Configuration" -> "Data Sources" -> "Add data source" Button anklicken
		- "Prometheus auswählen"
		- Im Abschnitt "HTTP" in das Feld "URL" `http://prometheus:9090` einfügen.
	- Reiter  Dashboards:
		- Hier können fertige Prometheus Dashboards importiert werden
6. Über das "+" in der Seitenleiste -> "Import" wählen
7. [example-dashboard.json](example-dashboard.json) Inhalt kopieren und einfügen.
8. Fertig, viel Spaß beim Ausprobieren!


# CiteLibre RendezVous
Ce repository héberge tout le code source requis pour lancer une application CiteLibre RendezVous locale complète.

CiteLibre Rendez-Vous vous permet de gérer facilement la disponibilité de vos services publics. Les utilisateurs peuvent prendre rendez-vous sur vos créneaux définis, tant qu'ils restent disponibles et sont automatiquement avertis en fonction de l'organisation que vous avez mise en place.
Que vous ayez un service saisonnier (qui fait varier la demande de façon prévisible) ou non, contrôlez vos créneaux de disponibilités avec précision et en temps réel.

## Table des matières
- [Architecture](#architecture)
- [Démarrage](#Démarrage)
  - [URL et identifiants par défaut](#URL-et-identifiants-par-défaut)
  - [Commandes Utiles](#Commandes-Utiles)
- [Services optionnels](#Services-optionnels)
- [Matomo](#Matomo)
- [Utilisation en production](#Utilisation-en-production)

Vous trouverez la documentation technique de ce package dans le [Wiki](https://github.com/citelibre/ParticipEZ/wiki) (données persistantes, mode dev, édition du thème graphique, etc)

## Architecture
Architecture avec base de données embarquées et outil SMTP

![Diagramme de l'architecture de CiteLibre](./utils/CiteLibre-participEZ-docker.svg "Architecture de CiteLibre")

## Démarrage

Si vous êtes derrière un proxy :

1. Démarrer le service complet `CiteLibre` en tâche de fond :

```bash
    docker-compose up -d
```

En mode interactif : 

```bash
    docker-compose up
```

Le démarrage prend environ 1 minute

Si vous utilisez un fichier de variables d'environnement nommé par exemple external-database.env, démarrez comme suit :

```bash
    docker-compose --env-file external-database.env up -d
```

If you create an `.env` file, docker compose use it without using --env-file 


### URL-et-identifiants-par-défaut

- L'application WEB (Front Office) : <http://localhost:8080/rendezvous>.

- L'application WEB (Back Office) : <http://localhost:8080/rendezvous/jsp/admin/AdminLogin.jsp> : `admin`/`adminadmin`

- Service Mail (permettant d'afficher les contenus de tout e-mail envoyé par l'application) : <http://localhost:1080/>.

- Matomo (for see stats of your application) at <http://localhost:80> : `admin`/`adminadmin`

- Keycloak <http://localhost:8081/> : `admin` / `admin1234`. Et un compte front de démo est disponible : `test@paris.fr` / `test1234=TEST1234`

- Elasticsearch & Kibana <http://localhost:5601> : `lutece` / `RKOmBI1sWaa*SFm1gx*H`

### Commandes Utiles

- `docker-compose exec citelibre /bin/bash` : Ouvre un bash dans le conteneur CiteLibre-rendezvous.
- `docker-compose logs` : Affiche les logs.
- `docker-compose logs {service}` : Affiche les logs d'un service en particulier, ex. `citelibre-rendezvous`.

## Services optionnels

Si ces services ne vous concernent pas, n'hésitez pas à supprimer les sections commentées correspondantes.

## Matomo

Dans Matomo, les données sont affichées par défaut pour le jour suivant la date d'aujourd'hui. N'oubliez pas de changer avec la date du jour pour consulter les données du jour.

## Utilisation en production

> [!ATTENTION]
> N'UTILISEZ PAS ces images telles quelles sans persister vos données au risque de les perdre à chaque nouvelle livraison. Vous devez utiliser des volumes montés car les conteneurs peuvent être recréés et réinitialiser toutes les données. 
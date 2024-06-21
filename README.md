<p align="center">
	<img src="./utils/CiteLibre.svg" alt="CitéLibre logo"/>
</p>

# CitéLibre RendezVous with docker-compose

## Table of contents

- [Architecture](#architecture)
- [Getting started](#getting-started)
  - [URL and default login](#url-and-default-login)
  - [Helpful commands](#helpful-commands)
- [Optional services](#optional-services)
- [Matomo](#matomo)
- [Production usage](#production-usage)

You can find more information in the [Wiki](https://github.com/citelibre/RendezVous/wiki) (persistant data, dev mode, edit theme, etc)

## Architecture
Architecture with embedded database and stmp server

![CiteLibre architecture diagram](./utils/CiteLibre-rendezvous-docker.svg "CiteLibre architecture")

## Getting started

If you are behind a proxy :

1. Start the `CiteLibre` service (and any others) in background:

```bash
    docker-compose up -d
```

In interactive : 

```bash
    docker-compose up
```

Startup takes 1 minute

If you have created an env file named external-database.env start the following 

```bash
    docker-compose --env-file external-database.env up -d
```

If you create an `.env` file, docker compose use it without using --env-file 


### URL and default login

- Lutece Open UI at <http://localhost:8080/rendezvous>.

- Lutece Back end is available at : <http://localhost:8080/rendezvous/jsp/admin/AdminLogin.jsp> : `admin`/`adminadmin`

- Mail (in order to see mail send by application) at <http://localhost:1080/>.

- Matomo (for see stats of your application) at <http://localhost:80> : `admin`/`adminadmin`

- Keycloak at <http://localhost:8081/> : `admin` / `admin1234` . And for demo you can use user demo : `test@paris.fr` / `test1234=TEST1234`

- Elasticsearch & Kibana <http://localhost:5601> : `lutece` / `RKOmBI1sWaa*SFm1gx*H`

### Helpful commands

- `docker-compose exec citelibre /bin/bash`: Get a bash shell inside your CiteLibre-rendezvous container.
- `docker-compose logs`: See all logs.
- `docker-compose logs {service}`: See logs for a particular service, e.g. `citelibre`.

## Optional services

If these services are not relevant to you, feel free to delete the corresponding commented sections.

## Matomo

In matomo by default is displayed the day after today. Remember to change with the current date of the day if you want see the actual data

## Production usage

> [!CAUTION]
> DO NOT use this without persisting your data and email. You should use
mounted volumes as containers can be recreated and re-init all data. 

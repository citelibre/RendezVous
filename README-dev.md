![alt text](utils/Images/CiteLibre_500.png "Cite Libre")
# CiteLibre Rendezvous & Docker Compose

## Build and launch all containers

```
make test
```

Delete all apps containers :
```
make test-down
```

## Prepare your dump


if you have a new dump, go into mysql and replace the content of dump.sql by the new one.

You must do some actions :

* Check that you dump is correct for special french character ( like ├⌐ )

* In your dump file, at top of the file add  CREATE DATABASE/ USE instruction 

```bash
CREATE DATABASE lutece;
USE lutece;
```

* Replace matomo info
  
```bash
	('matomo.site_property.server.http.url', 'http://localhost/'),
	('matomo.site_property.server.https.url', 'http://localhost/'),
	('matomo.site_property.site.id', '1'),
    ('matomo.site_property.widget.auth.token', 'cfa9a798abd584817e2eb94d7bc14bb0'),
``` 

* Replace adminpack instruction by admin and password admin (in html section)
  
```bash
<p class="p-small">Demo user access-code is <strong>"admin"</strong> and the password is <strong>"adminadmin"</strong>
``` 

* replace user admin with correct password and change the expiration date (in this sample i use 2023-02-08 09:58:00)
```bash
	(1, 'admin', 'AdminNom', 'adminPrénom', 'lutece@paris.fr', 0, 'PLAINTEXT:adminadmin', 'fr', 0, 0, 0, '2023-02-08 09:58:00', 1698479072663, 0, '2022-10-28 09:44:32', 'all'),
``` 

* verify  admin user role : he must have the Matomo stats roles (in User menu => configure permission => at the end of the list)

## Recompile citelibre


Go into citelibre-rendezvous directory

```bash
    cd citelibre-rendezvous
```

Update pom.xml file with the new version

Create a directory name "target"

```bash
    mkdir target
```

Create the container builder

```bash
    docker build . -f Docker-builder -t local-builder 
```

Launch

```bash
    docker run -v ./target:/app/target -t local-builder 
```


takes a coffee ... or four :-) (compilation time is about 20 minutes, maven download dependencies is very time expensive)

rename war with site-citelibre-rendezvous-X.X.X (X.X.X is the numero number) 


Change in citelibre-rendezvous/Dockerfile  => ARG site=site-citelibre-rendezvous-X.X.X

and on Makefile => VERSION=X.X.X


Log into docker hub

```bash
    docker login
```

After you can launch makefile task (you need to install make utility in utils/outils directory)  : 

For building local containers 

```bash
    make build
```


And for publish into docker hub

```bash
    make publish
```
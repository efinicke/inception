# Inception

## Skills

- **System Administration**
  - Configuration and management of virtual machines.

- **Docker**
  - Creation and management of custom Docker images.
  - Writing Dockerfiles.
  - Using `docker-compose`.
  - Managing Docker networks and volumes.

- **Security**
  - Implementing secure connections (TLSv1.2/1.3).
  - Using environment variables and Docker secrets.

- **Automation**
  - Writing Makefiles to automate deployment.

- **Web Services**
  - Deploying and configuring NGINX, WordPress, and MariaDB.
  - Managing users and permissions in WordPress.


## Project Overview 

Ce projet réalisé à l'école 42 m'a permis d'acquérir des connaissances en administration système à travers l'utilisation de Docker et Docker Compose. En créant mes propres images via la rédaction de Dockerfiles, j'ai été amenée à configurer des conteneurs pour divers services tels que NGINX, WordPress et MariaDB. L'objectif principal était de déployer un site WordPress complet dans un environnement isolé et modulaire.

Chaque service fonctionne dans un conteneur dédié, avec NGINX assurant la gestion sécurisée du trafic HTTP et HTTPS en tant que point d'entrée. WordPress utilise MariaDB pour stocker ses données, nécessitant une configuration minutieuse pour garantir une communication fluide et sécurisée entre les conteneurs. Le projet a été un défi technique enrichissant, incluant la création de Dockerfiles personnalisés pour chaque service, l'utilisation de docker-compose pour l'orchestration, la gestion de volumes pour assurer la persistance des données, la création et sécurisation de la base de données SQL, et la mise en œuvre de bonnes pratiques de sécurité.

L'utilisation de Docker Compose permet de créer un environnement reproductible, assurant que l'application fonctionne de manière cohérente sur n'importe quel OS compatible Docker. Cela simplifie les déploiements et élimine les risques liés aux différences de configuration entre les environnements de développement, de test et de production.


## Content 

Un bon schéma vaut mieux qu'un long discours : 
![inception architecture](inception_containers_architecture.png)


## Etapes pour déployer notre projet :

1. Mettre à jour les référentiels : 
```bash
$ sudo apt update
$ sudo apt upgrade
```

2. Installer Docker-Compose  :
https://docs.docker.com/engine/install/ubuntu/

3. Permettre à notre $USER d'utiliser docker-compose sans sudo :
https://docs.docker.com/engine/install/linux-postinstall/

4. Lancer notre docker-compose : 
```bash
make
```

## CLI (Command Line Interface)
[CLI Docker compose](https://docs.docker.com/compose/reference/)


## Links 

- [42 codeshaman](https://github.com/efinicke/inception/)
- [Entrainement avec images dl sur le hub](https://medium.com/swlh/wordpress-deployment-with-nginx-php-fpm-and-mariadb-using-docker-compose-55f59e5c1a)
- [Docker video course 3hrs](https://www.youtube.com/watch?v=3c-iBn73dDE)
- [tuto : Connecter plusieurs conteneurs](https://www.nicelydev.com/docker/connecter-conteneurs-reseau#h2_0)
- [Using Variables in Docker-Compose](https://betterprogramming.pub/using-variables-in-docker-compose-265a604c2006)
- [The Importance of the .dockerignore File](https://www.codingzeal.com/post/the-importance-of-the-dockerignore-file)
- [Blog d'un devOps](https://blog.stephane-robert.info/docs/)
- [Modifier wp-config.php](https://codex.wordpress.org/fr:Modifier_wp-config.php)
- [Make Wordpress hosting](https://make.wordpress.org/hosting/handbook/server-environment/)
- [Nginx](https://www.nicelydev.com/nginx)
- [Install ufw](https://linuxhint.com/advanced-ufw-firewall-configuration-ubuntu-22-04/)
- [42 llescure](https://github.com/llescure/42_Inception)
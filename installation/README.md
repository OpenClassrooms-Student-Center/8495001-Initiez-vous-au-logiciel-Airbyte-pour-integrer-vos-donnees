# Installation de PostgreSQL avec Docker Compose

Pour les étudiants plus à l’aise avec les technologies de conteneurisation, je vous recommande d'installer PostgreSQL directement via Docker Compose en suivant ces deux étapes simples :

1. Téléchargez le fichier docker-compose.yaml disponible à la racine de ce dossier.
1. Lancez le service en exécutant la commande suivante dans votre terminal :
```sh
  docker compose up -d
```

> **Info :** Si vous souhaitez approfondir vos connaissances sur Docker, je vous invite à suivre le cours "Optimisez votre déploiement en créant des conteneurs avec Docker" disponible [ici](https://openclassrooms.com/fr/courses/2035766-optimisez-votre-deploiement-en-creant-des-conteneurs-avec-docker/7539436-tirez-un-maximum-de-ce-cours).


Félicitations, vous avez maintenant déployé PostgreSQL, incluant la CLI `psql`, ainsi que l’interface graphique `pgAdmin` !

## Connexion à pgAdmin

Pour vous connecter à pgAdmin, ouvrez votre navigateur et rendez-vous à l'adresse suivante : `http://localhost:8080`. Utilisez les identifiants suivants :

- **Email :** admin@admin.com
- **Mot de passe :** root

Une fois connecté, vous pourrez gérer vos bases de données PostgreSQL facilement grâce à l'interface conviviale de pgAdmin.

Une fois sur l’interface, vous pouvez vous connecter au serveur PostgreSQL:
- Faites un clic droit sur l’onglet “Servers”, puis sélectionnez “Register”, puis “Server”.
- Dans l’onglet “General”, mettez le nom que vous souhaitez à votre connexion (par exemple dvdrental_server).
- Dans l’onglet “Connection”, remplissez les informations suivantes:
  - Host name / address: `pgdatabase-xb0`
  - Port: 5432 (si vous n’avez pas changé la valeur par défaut)
  - Maintenance database: postgres
  - Username: `postgres`
  - Password: `postgres`

Votre SGBD est désormais connecté, vous devriez voir apparaître votre serveur dvdrental_server dans la rubrique “Server”, tel que précisé ci-dessous.

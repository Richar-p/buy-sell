# Choix technique effectué

La stack technique est la suivante :

- Docker-compose : Utile pour la simplicité de déploiement et de développement.
- Ruby On Rails : Qui faisait l'objet de ce test
- Sidekiq : Utilisé pour les taches de fond (téléversement d'images)
- PostgreSQL : Base de données pour RoR, choisi par habitude sur tous mes projets
- ActiveAdmin gem : Gem RoR utilisé pour générer facilement un panel admin
- Devise gem : Gem RoR utilisé pour l'authentification
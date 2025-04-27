# Green-IT

## Description du projet
Green-IT est un projet d'application web consacrée aux films, mettant en œuvre des pratiques de développement durable dans le domaine de l'informatique. L'application permet de consulter une base de données de films et inclut également un système de quiz.

## Fonctionnalités
- Consultation de films depuis une base de données
- Interface utilisateur avec vues index, layout et movies
- Fonctionnalité de quiz

## Table des matières
- [Installation](#installation)
- [Configuration](#configuration)
- [Utilisation](#utilisation)
- [Structure du projet](#structure-du-projet)
- [Contribuer au projet](#contribuer-au-projet)
- [Historique des contributions](#historique-des-contributions)
- [Licence](#licence)

## Installation

### Prérequis
- Node.js et npm (ou yarn)
- Une base de données SQL (compatible avec le fichier db_movies.sql)
- Navigateur web moderne

### Cloner le dépôt
```bash
git clone https://github.com/MailinhTA/green-it.git
cd green-it
```

### Installer les dépendances
```bash
npm install
# ou si vous utilisez yarn
yarn install
```

## Configuration

1. Configurez la base de données en important le fichier SQL fourni :
```bash
# Exemple avec MySQL
mysql -u utilisateur -p nom_de_base < db_movies.sql
```

2. Si nécessaire, modifiez les paramètres de connexion à la base de données dans l'application (habituellement dans un fichier de configuration ou directement dans le code).

## Utilisation

### Démarrer le serveur de développement
```bash
# Si configuré dans package.json
npm run dev
# ou
node index.js
```
Le serveur sera accessible à l'adresse [http://localhost:3000](http://localhost:3000) (ou un autre port spécifié dans l'application).

### Lancer l'application
```bash
npm start
# ou
node app.js
```

## Structure du projet

```
green-it/
├── bin/             # Scripts exécutables et binaires de l'application
├── public/          # Ressources statiques et fichiers publics
├── routes/          # Définition des routes de l'application
├── views/           # Templates et vues de l'application
├── app.js           # Point d'entrée principal de l'application
├── db_movies.sql    # Script SQL pour la base de données de films
├── index.js         # Script d'initialisation du serveur
├── package.json     # Dépendances et scripts
├── package-lock.json # Verrouillage des versions des dépendances
└── README.md        # Ce fichier
```

## Contribuer au projet

Nous sommes ravis de recevoir des contributions à ce projet ! Voici comment procéder :

### Processus de contribution

1. **Forker** le dépôt
2. **Créer** une branche pour votre fonctionnalité (`git checkout -b feature/amazing-feature`)
3. **Commiter** vos changements (`git commit -m 'Add some amazing feature'`)
4. **Pousser** vers la branche (`git push origin feature/amazing-feature`)
5. **Ouvrir** une Pull Request

### Conventions de commit

Nous suivons la convention [Conventional Commits](https://www.conventionalcommits.org/) pour nos messages de commit :

- `feat:` pour une nouvelle fonctionnalité
- `fix:` pour une correction de bug
- `docs:` pour la documentation
- `style:` pour le formatage du code
- `refactor:` pour une refactorisation du code
- `test:` pour l'ajout ou la modification de tests
- `chore:` pour les tâches de maintenance

### Processus de revue de code

Chaque Pull Request doit être approuvée par au moins un membre de l'équipe avant d'être fusionnée.

## Historique des contributions

### Membres de l'équipe
- MailinhTA (@MailinhTA) - Contributeur principal, responsable du développement initial et des vues
- Robinprev (@Robinprev) - Contributeur, responsable de la base de données et des mises à jour du README
- NathanCodaccioni (@NathanCodaccioni) - Contributeur, responsable des templates Pug et des uploads de fichiers
- EdBrandenburg (@EdBrandenburg) - Contributeur, responsable de l'initialisation de l'application
- pizzaalonion (@pizzaalonion) - Contributeur, responsable du dossier bin et public

### Historique des contributions
#### Avril 2025
- Update app.js - modification of the var of db (MailinhTA)
- Update README.md (Robinprev)
- test main (MailinhTA)
- bin + public (pizzaalonion)
- Adding the database (Robinprev)
- Delete admin.pug, error.pug, login.pug (NathanCodaccioni)

#### Avril 2025 (plus tôt)
- Delete profile.pug, register.pug (NathanCodaccioni)
- Add files via upload (NathanCodaccioni)
- init app + modifs (EdBrandenburg)
- add view of index, layout, movies and quizz (MailinhTA)
- Update README.md (Robinprev)
- Initial commit (MailinhTA)

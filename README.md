# README

TPs réalisés au cours de l'UV LP71 (Découverte de ruby et Angular)

## Setup de l'environnement

Pour Mac OS 10.14.x : 
```
brew installrbenv ruby-build
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc
source ~/.zshrc
rbenv install 2.7.0
rbenv global 2.7.0
ruby -v
gem install rails -v 6.0.2.1
rbenv rehash
```
```
rails -v
# Rails 6.0.2.1
```
```
brew install sqlite3
```

Création d'un nouveau projet : 
```
rails new .
rails server 
```

Ajout de la page burger : 
```
rails g scaffold burger name price:float image nutriscore
rails db:migrate
```

Procfile : 
Le procfile permet de lancer des commandes au démarrage de l'instance heroku
Source : https://devcenter.heroku.com/articles/procfile

Exemple d'utilisation de l'API Slack : 
```
curl -X POST --data-urlencode 'payload={"channel": "#random", "username": "webhookbot", "text": "This is posted to #groo"}' https://hooks.slack.com/services/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
```
Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

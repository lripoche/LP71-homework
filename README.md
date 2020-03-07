# README

TPs réalisés au cours de l'UV LP71 (Découverte de ruby et Angular)

## Setup de l'environnement

Source : https://gorails.com/setup/osx/10.14-mojave
Pour Mac OS 10.14.x et Ruby 2.7: 
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

Pour Mac OS 10.14.x et Ruby 2.6: 
```
brew install rbenv ruby-build

echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc
source ~/.zshrc

rbenv install 2.6.5
rbenv global 2.6.5
ruby -v
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

Utilisation de Openfoodfacts API : 
Source : https://www.rubydoc.info/gems/openfoodfacts/0.5.1
```
require 'openfoodfacts'

# Browse a product

code = "3029330003533"
product = Openfoodfacts::Product.get(code, locale: 'fr')

product.product_name
# => "Crousti Moelleux Complet"

# Search products

products = Openfoodfacts::Product.search("Chocolate", locale: 'world', page_size: 3)
# => [#<Openfoodfacts::Product _id="3045140105502" code="3045140105502" id="3045140105502" image_small_url="https://en.openfoodfacts.org/images/products/304/514/010/5502/front.7.100.jpg" lc="en" product_name="Milka au lait du Pays Alpin">, #<Openfoodfacts::Product _id="3046920028363" code="3046920028363" id="3046920028363" image_small_url="https://en.openfoodfacts.org/images/products/304/692/002/8363/front.5.100.jpg" lc="en" product_name="Tableta de chocolate negro \"Lindt Excellence\" 85% cacao">, #<Openfoodfacts::Product _id="3046920029759" code="3046920029759" id="3046920029759" image_small_url="https://en.openfoodfacts.org/images/products/304/692/002/9759/front.9.100.jpg" lc="en" product_name="Tableta de chocolate negro \"Lindt Excellence\" 90% cacao">]
```

Si on obtient une erreur :You are setting a key that conflicts with a built-in method Hashie::Mash#frozen? defined in Kernel. This can cause unexpected behavior when accessing the key via as a property. You can still access the key via the #[] method.
Source : https://github.com/berkshelf/ridley/issues/366
```
# get rid of Hashie / VariaModel warnings
Hashie.logger.level = Logger.const_get 'ERROR'
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

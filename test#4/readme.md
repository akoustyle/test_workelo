# Test #4 (Tests)

La première règle du développement, c'est de toujours tester la nouvelle fonctionalité développée. Pour cela on fait des tests "comme en vrai" en allant sur l'app et en naviguant comme le ferait l'utilisateur. On fait aussi des tests en allant en console pour tester par exemple les méthodes.
Cela constitue le minimum, mais une bonne pratique est de mettre en place en surcouche, des tests faits "à la main", des tests automatiques.

### 1️⃣ Ecris un test unitaire

En utilisant RSpec, teste notre objet ruby : kit.rb.
(Un kit est le nom qu'on a donné à tout matériel ou accès spécifique offert à la nouvelle recrue. Ca peut être un ordinateur, une adresse mail, un badge, un pull...)
Tu dois tester au moins 3 méthodes.

### 2️⃣ Ecris un test de navigation (feature test)

En utilisant RSpec, teste (cette page)[https://fr.wikipedia.org/wiki/Ruby].
Tu peux tester ce que tu veux, essaie de réfléchir à ce qui est le plus important, mais teste au moins 3 éléments.

---
Allez, c'est le dernier, après c'est fini 💪 !

> Si tu as la moindre question, ✉️ recrutement-tech@workelo.eu

### 1 Test unitaire<br>
Lancer rspec spec_kit.rb

### 2 Test de naviguation<br>
Avant de lancer le test, installer les gems suivantes si elle ne sont pas déjà installé:<br>
gem install rspec
gem install capybara
gem install selenium-webdriver

Uniquement si vous avez déjà la gem rspec installé et que le  test ne fonctionne pas, forcer l'installation via cette commande:<br>
sudo gem install rspec -v 3.10.0

Lancer:<br>
bundle install

Lancer:<br>
brew install --cask chromedriver

Dans un nouveau terminal lancer ces 2 lignes:<br>
cd /usr/local/Caskroom/chromedriver/95.0.4638.69
xattr -d com.apple.quarantine chromedriver

Enfin<br>
Lancer rspec test_naviguation.rb

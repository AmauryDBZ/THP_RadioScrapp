# THP_RadioScrapping
The Hacking Project Mission

## Tuto sans ce repo

(cours de THP : week 2 day 4)

1. créer son app rails si on veut enfaire quelque chose sophistiqué, ou simplement un fichier ruby comme on l’avait fait à l’époque.

2. ajouter **gem 'nokogiri'** à son gemfile et **require 'nokogiri'** et **require 'open-uri'** dans les fichiers scrappeurs.

3. dans le fichier scrappeur ouvrir l’url avec :
**page = Nokogiri::HTML(open("ton_url_a_scrapper.com"))**

4. pointer l’élément à scrapper en récupérant le bon xpath ou css_path (utiliser l’inspecteur et faire plusieurs test ou bien pointer vers le bon élément).

5. l’élément récupéré est alors sous format HTML (ou un array de HTML), il faut faire **.text** pour en extraire la partie texte.

## Quelques bon plans pour ne pas trop galérer : 
cheat sheets
https://devhints.io/xpath
https://devhints.io/css

gem nokogiri
https://github.com/sparklemotion/nokogiri

bastard books
http://ruby.bastardsbook.com/chapters/html-parsing/

## Avec ce repo

migrez la table, bundle install, lancez le server local et ouvrez votre navigateur web !

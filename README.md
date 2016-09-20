# chilexpress-webscrapper
This is a nokogiri rails based project where we can obtain information about a package sent via chilexpress carry's service only sending a tracking number.

## Prerequisites
**Ruby** version >= 2.2.0
**Rails** version > 4
**Postgresql** database version > 8.5 ubuntu (or OS equivalent)
**Internet access**

## Install
bundle install
rake db:create
rake db:migrate
rake db:seed

## Run
rails server

### How it works
put a tracking number into home > serch's field
press enter

### Other functionalities
there is a login and register form but that has no relation with the main function for now... I spec to make a relation between a package and the user's info.
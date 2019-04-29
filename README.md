# How to Develop Rails on Docker all-in-one

## Pre
* docker and docker-compose installed on your machine
* rvm, ruby, bundler gem and rails gem (to generate first project)

## Use
* clone this or get the recipe on this repo
* generate new project first with `rails new . --force --database=postgresql --skip-bundle`
* `docker-compose build .`
* `docker-compose up -d`
* you can modify and coding on `http://localhost:8443` or preferable

## Happy Hacking



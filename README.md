# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

docker-compose run web rails db:migrate
docker-compose run web rails db:seed
docker-compose -f docker-compose.yml up --build

* ...

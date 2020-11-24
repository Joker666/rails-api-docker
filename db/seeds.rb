# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Author.delete_all
Article.delete_all

10.times do
    Author.create(name: Faker::Book.unique.author)
end

50.times do
    Article.create({
                     title: Faker::Book.title,
                     body: Faker::Lorem.paragraphs(number: rand(5..7)),
                     author: Author.limit(1).order('RANDOM()').first # sql random
                   })
end

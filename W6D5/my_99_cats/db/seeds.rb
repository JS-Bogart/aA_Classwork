# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cat.destroy_all
garfield = Cat.create({birth_date: '2015-03-12', color: 'orange', name: 'Garfield', sex: 'M', description: 'Hates Mondays'})
felix = Cat.create({birth_date: '2017-03-12', color: 'brown', name: 'Felix', sex: 'F', description: 'Felix the cat has undergone sex reassignment'})
kinglear = Cat.create({birth_date: '2013-03-12', color: 'black', name: 'King Lear', sex: 'M', description: 'Has three shitty kittens'})
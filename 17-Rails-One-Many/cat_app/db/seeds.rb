# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all 
Owner.destroy_all

ant = Owner.create(name: "Antonio")
al = Owner.create(name: "Alex")
ed = Owner.create(name: "Eddie")

Cat.create!(name: "Tesla", age: 2, breed: "Black Shorthair", owner_id: ant.id)


puts "Seeds file ran!"
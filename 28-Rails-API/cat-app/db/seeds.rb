# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Owner.destroy_all
Kitten.destroy_all 

ant = Owner.create(name: 'Antonio' , age: 27)
ale = Owner.create(name: 'Alex' , age: 27)
chr = Owner.create(name: 'Christina' , age: 30)
dev = Owner.create(name: 'Devin' , age: 24)

Kitten.create(name: 'Tesla', breed: 'Black Shorthair', age: 1, owner:  ant)
Kitten.create(name: 'Biscuit', breed: 'Manx', age: 3, owner:  ale)
Kitten.create(name: 'Cookie', breed: 'Cookie', age: 4, owner:  chr)
Kitten.create(name: 'Fluffy', breed: 'Longhair', age: 3, owner:  chr)
Kitten.create(name: 'Osiris', breed: 'Tabby', age: 11, owner:  dev)
Kitten.create(name: 'Nermal', breed: 'Russian Blue', age: 4, owner:  dev)
Kitten.create(name: 'Garfield', breed: 'Orange Tabby', age: 1, owner:  dev)



puts "Seed file has run"
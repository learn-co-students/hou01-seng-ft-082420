Cat.destroy_all
Owner.destroy_all

ant = Owner.create(name: "Antonio")
bob = Owner.create(name: "Bobby")
joe = Owner.create(name: "Joe")

Cat.create(name:"Tesla", breed:"Calico", owner_id: ant.id)
Cat.create(name:"Biscuit", breed:"Manx", owner_id: joe.id)
Cat.create(name:"Ninja", breed:"Street")
Cat.create(name:"Fred", breed:"Domestic Shorthair")


puts "Seed file has run"
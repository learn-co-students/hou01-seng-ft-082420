# Cat.destroy_all
# Owner.destroy_all

# ant = Owner.create(name: "Antonio")
# bob = Owner.create(name: "Bobby")
# joe = Owner.create(name: "Joe")

# Cat.create(name:"Tesla", breed:"Calico", owner_id: ant.id)
# Cat.create(name:"Biscuit", breed:"Manx", owner_id: joe.id)
# Cat.create(name:"Ninja", breed:"Street")
# Cat.create(name:"Fred", breed:"Domestic Shorthair")

Performer.destroy_all
Venue.destroy_all
Concert.destroy_all

djc = Performer.create(name: "DJ Crispy")
bey = Performer.create(name: "Beyonce")
ant = Performer.create(name: "Antonio")
bros = Performer.create(name: "Brother Sports")

wood = Venue.create(name: 'Woodlands Pavilion')
john = Venue.create(name: 'Johns Basement')
woak = Venue.create(name: 'White Oak Music Hall')
disc = Venue.create(name: 'Discovery Green')
moh = Venue.create(name: 'Mohawk')
hotel = Venue.create(name: 'Hotel Vegas')
HEB = Venue.create(name: 'HEB Center')


Concert.create(name: "Say Hi to your brother, Brothers tour", date: '09/17/2020', venue_id: john.id, performer_id: bros.id)
Concert.create(name: "Queen Bee Tour", date: '09/20/2020', venue_id: john.id, performer_id: bey.id)
Concert.create(name: "Antoni-Tour", date: '09/22/2020', venue_id: wood.id, performer_id: ant.id)
Concert.create(name: "Queen Bee Tour", date: '09/25/2020', venue_id: disc.id, performer_id: bey.id)




puts "Seed file has run"
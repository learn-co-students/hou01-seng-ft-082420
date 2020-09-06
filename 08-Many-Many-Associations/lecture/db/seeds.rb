Concert.destroy_all
Fan.destroy_all
Ticket.destroy_all

c1 = Concert.create(artist_name: "Mumford and Sons")
c2 = Concert.create(artist_name: "Metallica")
c3 = Concert.create(artist_name: "Green Day")
c4 = Concert.create(artist_name: "Beyonce")




f1 = Fan.create(name: "Raul")
f2 = Fan.create(name: "Antonio")
f3 = Fan.create(name: "Joe")
f4 = Fan.create(name: "Joelle")

t1 = Ticket.create(fan_id: f1.id , concert_id: c1.id, price: 10)
t2 = Ticket.create(fan_id: f2.id , concert_id: c1.id, price: 10)
t1 = Ticket.create(fan_id: f2.id , concert_id: c4.id, price: 100)
t1 = Ticket.create(fan_id: f3.id , concert_id: c3.id, price: 30)



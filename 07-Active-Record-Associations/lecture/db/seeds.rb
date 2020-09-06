Kitten.destroy_all
Owner.destroy_all
# we are resetting our table rows,
# doesn't reset id number :eyes:

tesla = Kitten.new(name: "Tesla")
tesla.save

gar = Kitten.new(name: "Gar")
# gar.owner = john WILL NOT WORK
gar.save

new_kit = Kitten.create(name: "Bubba")

john = Owner.new(name: "John")
john.save

gar.owner = john
antonio = Owner.create(name: "Antonio")

test_kitten = Kitten.create(name: "Mitten", owner_id: antonio.id)


# k = Kitten.create(name: 1)
binding.pry
0



puts 'what the hell am I??'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# character is our joiner
Actor.destroy_all
Movie.destroy_all
Character.destroy_all

tm = Actor.create(name: "Tobey McGuire", age: 45)
kd = Actor.create(name: "Kirsten Dunst", age: 35)
th = Actor.create(name: "Tom Hanks", age: 64)
jm = Actor.create(name: "Jason Momoa", age: 41)

sm = Movie.create(title: "Spider Man", release_date: 2002)
ts = Movie.create(title: "Toy Story", release_date: 1996)
am = Movie.create(title: "Aquaman", release_date: 2018)
fg = Movie.create(title: "Forrest Gump", release_date: 1992)

Character.create(role_name: "Peter Parker", movie_id: sm.id, actor_id: tm.id )
Character.create(role_name: "MJ Watson", movie_id: sm.id, actor_id: kd.id )
Character.create(role_name: "Woody", movie_id: ts.id, actor_id: th.id )
Character.create(role_name: "Aquaman", movie_id: am.id, actor_id: jm.id )
Character.create(role_name: "Forrest Gump", movie_id: fg.id, actor_id: th.id )



puts "seed file has run"
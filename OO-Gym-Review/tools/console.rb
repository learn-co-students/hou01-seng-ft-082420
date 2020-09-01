# You don't need to require any of the files in lib or pry.
# We've done it for you here.
require_relative '../config/environment.rb'

# test code goes here

l1 = Lifter.new("Payton", 5)
l2 = Lifter.new("Edward", 9001)
l3 = Lifter.new("Alec", 88)
l4 = Lifter.new("Wesley", 18)

g1 = Gym.new("Golds")
g2 = Gym.new("Lifetime")
g3 = Gym.new("Planet Fitness")

m1 = Membership.new(g1, l1, 5) #gym, lifter, cost
m2 = Membership.new(g2, l3, 10) #gym, lifter, cost
m3 = Membership.new(g3, l4, 25) #gym, lifter, cost
m5 = Membership.new(g1, l2, 100) #gym, lifter, cost
m6 = Membership.new(g1, l3, 5) #gym, lifter, cost

binding.pry

puts "Gains!"

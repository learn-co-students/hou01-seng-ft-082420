require_relative './fan.rb'
require_relative './concert.rb'
require_relative './ticket.rb'
require 'pry'

t = Ticket.new(Fan.new("Jacob"), Concert.new("Run the Jewels", "My house"), 80)

c1 = Concert.new("system of a down", "woodlands")
c2 = Concert.new("the beatles", ":sob: in my dreams")
c3 = Concert.new("hosier", "my garden :heart:")
c4 = Concert.new("tame impala", "toyota center")
c5 = Concert.new("BEYONCE", "NRG stadium")


raul = Fan.new("raul")
antonio = Fan.new("antonio")
joe = Fan.new("joe")


new_ticket = Ticket.new(antonio, c5, 3)

binding.pry
0
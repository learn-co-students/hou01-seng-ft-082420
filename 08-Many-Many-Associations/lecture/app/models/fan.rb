class Fan < ActiveRecord::Base
    has_many :tickets

    def buy_ticket(concert)
        Ticket.create(price: 45, fan_id: self.id, concert_id: concert.id)
    end
end
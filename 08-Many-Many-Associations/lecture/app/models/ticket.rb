class Ticket < ActiveRecord::Base
    belongs_to :fan
    belongs_to :concert

    def self.ticket_over_10
        # all ticket that are over the price of 10
        Ticket.where("Price > 10")
    end
end
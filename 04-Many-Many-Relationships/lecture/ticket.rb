# Fan has-many concerts
# concert has-many fans
# fan has-many tickets
# concert has-many tickets

# ticket belongs to a fan
# ticket belong to a concert

class Ticket

    @@all = []

    attr_reader :fan, :concert

    def initialize(fan, concert, price)
        @fan = fan
        @concert = concert
        @price = price

        self.class.all << self
    end

    def self.all
        @@all
    end
end
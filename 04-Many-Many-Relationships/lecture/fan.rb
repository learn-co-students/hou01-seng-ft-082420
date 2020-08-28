class Fan

    attr_reader :name
    # attr_accessor :concerts

    @@all = []

    def initialize(name)
        @name = name  
        # @concerts = []
        self.class.all << self # [].push(self)
    end

    def self.all
        @@all
    end

    # def name=(name)
    #     @name = name
    # end

    def concerts
        # iterate through tickets
        # return concerts
        self.tickets.collect do | ticket |
            ticket.concert
        end
        
    end

    def band_names
        self.concerts.collect do | concert |
            concert.band_name
        end
    end
    
    def tickets
        
        Ticket.all.select do  | ticket |
            ticket.fan == self
        end
        
    end

    # def concerts=(concerts)
    #     @concerts = concerts
    # end
    
    def go_to_concert(concert)
        # @concerts << concert # the attr_accessor was too basic for what we had to accomplish
        # binding.pry
        Ticket.new(self, concert, 45)

    end

    def bands
        self.concerts.collect do | c | 
            c.band_name
        end
    end

end

# Fan has_many concerts
# Concert has_many fans
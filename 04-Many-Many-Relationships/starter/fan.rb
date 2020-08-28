class Fan

    attr_reader :name
    attr_accessor :concerts

    @@all = []

    def initialize(name)
        @name = name  
        @concerts = []
        self.class.all << self # [].push(self)
    end

    def self.all
        @@all
    end

    def go_to_concert(concert)
        @concerts << concert

    end

    def bands
        self.concerts.collect do | c | 
            c.band_name
        end
    end

end

class Concert
    attr_reader :band_name, :venue
    @@all = []
    def initialize(band_name, venue)
        @band_name = band_name
        @venue = venue

        self.class.all << self
    end

    def self.all
        @@all
    end
end
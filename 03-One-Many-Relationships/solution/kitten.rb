class Kitten

    attr_accessor :name, :breed, :owner

    @@all = []

    def initialize(name, breed)

        @name = name
        @breed = breed
        @owner = nil

        self.class.all << self

    end

    def meow
        puts "#{@name} says meow"
    end

    def self.all
        @@all
    end
end
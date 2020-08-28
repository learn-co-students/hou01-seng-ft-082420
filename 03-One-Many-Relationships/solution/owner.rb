class Owner

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
    end

    def adopt_kitten(kitten)
        if kitten.owner 
            p "No Stealing!"
        else
            kitten.owner = self
        end
    end

    def cats
        Kitten.all.select do |c| 
            c.owner == self 
        end
    end

    def cat_breeds_owned
        self.cats.collect do |c| 
            c.breed 
        end
    end

    def self.all
        @@all
    end

end
require 'pry'

class Kitten
    attr_accessor :name, :breed, :owner

    @@all = []

    def initialize(name, breed)
        @name = name
        @breed = breed
        self.class.all << self
    end

    # instance method 
    # meow will be added to ___ 
    # denoted by Kitten#meow
    def meow
        puts "#{@name} says meow"
    end

    # method that returns a class variable
    # 
    def self.all
        @@all
    end

    # make the method
    # this is a class method
    def self.owned_cats
        # we only want cats that are owned
        # we want to iterate through array and check 
        # all.each ? check if the cat is owned??? 
        self.all.select do | c |
        #    block of a select is a conditional that runs true or false
         c.owner != nil
        end
    end
end

k1 = Kitten.new('Biscuit', 'Russian Blue')
k2 = Kitten.new('Copper', 'Tabby')

class Owner

    attr_reader :name
    attr_accessor :cats

    @@all = []

    def initialize(name)
        @name = name
        @cats = []                #we're remove this later 
        self.class.all << self
    end

    def say_hi 
        # name = "Mohammad"
        puts "Hey, I'm #{self.name}"  #   name, self.name, @name
    end

    def adopt_cat(kitten)
        @cats << kitten #adding kitten object to owners array of cats
        kitten.owner = self.name #self here references the OBJECT that is calling adopt_cat
    end

    def get_cat(name, breed)
        # we want to 'buy' a cat
        # create a cat
        new_kitten = Kitten.new(name, breed)
        # associate that cat to this owner 
        self.cats << new_kitten
        # an owner can have many cats
        # osiris
        
        # cant we just use self
        # line 52 def new kitten where we get cat as new argument
    end

    def self.all
        @@all
    end
    # def name #getter
    #     @name
    # end

    # def name=(new_name) #setter
    #     @name = new_name
    # end
end

k1 = Kitten.new('Biscuit', 'Russian Blue')

k2 = Kitten.new('Copper', 'Tabby')
k2 = Kitten.new('Bill', 'Tabby')
k2 = Kitten.new('Osiris', 'Tabby')
k2 = Kitten.new('Cat1', 'Tabby')
k2 = Kitten.new('rex', 'Tabby')
k2 = Kitten.new('cat2', 'Tabby')

o = Owner.new('Antonio')
o.adopt_cat(k1)





class Ticket 
    attr_accessor :airline
    @@all = []
    def initialize(airline)
        @airline = airline
        @@all << self
    end

    def self.all
        @@all
    end
end

class Airline

    @@all = []

    attr_accessor :name

    def initialize(name)
        @name = name
    end

    def tickets 
        # return all tickets belonging to THIS airline
        Ticket.all.select do |ticket|
            binding.pry
        end
    end
end



# in this method the owner instance needs to 'have the ability to' have an instance of a Kitten
        # we need to know what cat, but also make our methods dynamic (no hard coded objects here)
        # so we have the argument kitten here, which will be a bareword that represents our kitten object.
    # binding.pry # you can uncomment this and see for yourself what kitten is when you call this method
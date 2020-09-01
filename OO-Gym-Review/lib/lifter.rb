class Lifter
  attr_reader :name, :lift_total
  @@all = []
  def initialize(name, lift_total)
    @name = name
    @lift_total = lift_total
    # @@all << self
    self.class.all << self
  end

  def memberships
    Membership.all.select{| membership | membership.lifter == self}
  end

  def gyms
    # - Get a list of all the gyms 
    # that a specific lifter has memberships to
    self.memberships.collect do | membership |
      # binding.pry
      membership.gym
    end
  end

  def self.average_gains
    # average is add all then divide by how many there are
    sum = self.all.sum{|lifter| lifter.lift_total}
    total_count = self.all.count

    sum / total_count
    
  end

  def total_cost
    # add membership costs of all gyms they go to
    cost = self.memberships.sum do | membership |
      membership.cost
    end
    # binding.pry
  end

  def new_member(gym, cost)
    # make a new membership
    # gym, lifter, cost
    Membership.new(gym, self, cost)
  end

  def self.all
    @@all
  end
end

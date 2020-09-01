class Gym
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    self.class.all << self
  end

  def memberships
    Membership.all.select{| membership | membership.gym == self}
  end

  def lifters 
    self.memberships.collect do | m | 
      m.lifter
    end
    # binding.pry
  end

  def lifter_names
    self.lifters.collect do | lifter |
      lifter.name
    end

  end

  def combined_lift_total
    # all lifters lift_total summed up 
    self.lifters.sum do |lifter| 
      lifter.lift_total
    end

  end

  def self.all
    @@all
  end
end

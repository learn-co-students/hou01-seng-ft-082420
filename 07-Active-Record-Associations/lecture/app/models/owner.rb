class Owner < ActiveRecord::Base
    has_many :kittens
end
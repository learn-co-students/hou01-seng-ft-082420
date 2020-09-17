class Performer < ActiveRecord::Base
    has_many :concerts
end
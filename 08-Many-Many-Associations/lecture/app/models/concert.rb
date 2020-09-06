class Concert < ActiveRecord::Base
    has_many :tickets
end
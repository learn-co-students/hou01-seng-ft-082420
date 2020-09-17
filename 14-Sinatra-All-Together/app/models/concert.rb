class Concert < ActiveRecord::Base
    belongs_to :performer
    belongs_to :venue

end
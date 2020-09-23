class Character < ApplicationRecord
    belongs_to :movie
    belongs_to :actor

    validates(:role_name, {presence: true})
    # validates(:name, { presence: true, uniqueness: true })
end

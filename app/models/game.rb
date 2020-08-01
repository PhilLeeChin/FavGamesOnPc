class Game < ApplicationRecord
    has_many :computers
    has_many :users, through: :computers
end

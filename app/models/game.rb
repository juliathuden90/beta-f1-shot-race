class Game < ApplicationRecord
  belongs_to :track
  belongs_to :user
  has_many :results
  has_many :players
end

class Driver < ApplicationRecord
  belongs_to :team
  has_many :results
  has_many :players
end

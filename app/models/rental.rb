class Rental < ApplicationRecord
  validates :current, presence: true
end

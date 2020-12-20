class Rental < ApplicationRecord
  belongs_to :rentable, polymorphic: true
  validates :current, presence: true
end

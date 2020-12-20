class Rental < ApplicationRecord
  belongs_to :rentable, polymorphic: true
end

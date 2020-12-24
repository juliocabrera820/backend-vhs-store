class Rental < ApplicationRecord
  validates :client_id, :vhs_id, presence: true

  belongs_to :client
  belongs_to :vhs
end

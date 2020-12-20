class Vhs < ApplicationRecord
  include Rentable
  validates :serial_number, presence: true
  belongs_to :movie
end

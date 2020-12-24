class Vhs < ApplicationRecord
  include Rentable
  validates :serial_number, presence: true, numericality: { only_integer: true }, uniqueness: {
    message: 'Ya existe el número de serie'
  }
  belongs_to :movie
end

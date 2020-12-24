class Client < ApplicationRecord
  include Rentable
  validates :name, :home_address, presence: true
end

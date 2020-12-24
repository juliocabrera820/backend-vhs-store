class Client < ApplicationRecord
  validates :name, :home_address, presence: true
end

class Vhs < ApplicationRecord
  include Rentable
  belongs_to :movie
end

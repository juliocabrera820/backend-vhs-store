module Rentable
  extend ActiveSupport::Concern

  included do
    has_many :rentals, as: :rentable, dependent: :destroy
  end
end
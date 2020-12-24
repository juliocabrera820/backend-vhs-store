module Rentable
  extend ActiveSupport::Concern

  included do
    has_many :rentals, dependent: :destroy
  end
end

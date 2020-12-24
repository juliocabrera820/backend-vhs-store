class Genre < ApplicationRecord
  include Generable
  validates :name, presence: true
end

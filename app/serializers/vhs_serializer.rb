class VhsSerializer < ActiveModel::Serializer
  attributes :id, :serial_number
  has_many :rentals
  belongs_to :movie
end

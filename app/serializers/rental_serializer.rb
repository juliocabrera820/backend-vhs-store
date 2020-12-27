class RentalSerializer < ActiveModel::Serializer
  attributes :id, :current
  belongs_to :vhs
  belongs_to :client
end

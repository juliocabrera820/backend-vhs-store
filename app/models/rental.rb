# == Schema Information
# Schema version: 20201224193623
#
# Table name: rentals
#
#  id         :bigint           not null, primary key
#  current    :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  client_id  :bigint           not null
#  vhs_id     :bigint           not null
#
# Foreign Keys
#
#  fk_rails_3570c60ebf  (vhs_id => vhs.id)
#  fk_rails_ede3db960f  (client_id => clients.id)
#
class Rental < ApplicationRecord
  validates :client_id, :vhs_id, presence: true

  belongs_to :client
  belongs_to :vhs
end

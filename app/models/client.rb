# == Schema Information
# Schema version: 20201224193623
#
# Table name: clients
#
#  id           :bigint           not null, primary key
#  home_address :string
#  name         :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Client < ApplicationRecord
  include Rentable
  validates :name, :home_address, presence: true
end

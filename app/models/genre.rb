# == Schema Information
# Schema version: 20201224193623
#
# Table name: genres
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Genre < ApplicationRecord
  include Generable
  validates :name, presence: true
end

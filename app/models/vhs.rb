# == Schema Information
# Schema version: 20201224193623
#
# Table name: vhs
#
#  id            :bigint           not null, primary key
#  serial_number :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  movie_id      :bigint           not null
#
# Foreign Keys
#
#  fk_rails_25518f51d9  (movie_id => movies.id)
#
class Vhs < ApplicationRecord
  include Rentable
  validates :serial_number, presence: true, numericality: { only_integer: true }, uniqueness: {
    message: 'Ya existe el número de serie'
  }
  belongs_to :movie
end

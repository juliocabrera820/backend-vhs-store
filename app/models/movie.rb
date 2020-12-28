# == Schema Information
# Schema version: 20201224193623
#
# Table name: movies
#
#  id          :bigint           not null, primary key
#  description :text
#  director    :string
#  length      :integer
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Movie < ApplicationRecord
  include Generable
  has_one_attached :featured_image
  has_many :vhs

  validates :title, :year, :description, :director, :length, :featured_image, presence: true
  validates :length, numericality: { only_integer: true }
end

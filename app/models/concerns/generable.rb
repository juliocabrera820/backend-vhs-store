module Generable
  extend ActiveSupport::Concern

  included do
    has_many :movie_genres, as: :generable, dependent: :destroy
  end
end
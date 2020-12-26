module Generable
  extend ActiveSupport::Concern

  included do
    has_many :movie_genres, dependent: :destroy
  end
end

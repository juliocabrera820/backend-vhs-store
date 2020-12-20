class MovieGenre < ApplicationRecord
  belongs_to :generable, polymorphic: true

end

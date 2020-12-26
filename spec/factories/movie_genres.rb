FactoryBot.define do
  factory :random_movie_genre, class: MovieGenre do
    movie factory: :random_movie
    genre factory: :random_genre
  end
end

FactoryBot.define do
  factory :random_movie, class: Movie do
    title { Faker::Book.genre }
    year { Faker::Vehicle.year }
    length { Faker::Vehicle.year }
    description { Faker::Lorem.characters(number: 20) }
    director { Faker::FunnyName.two_word_name }
  end
end

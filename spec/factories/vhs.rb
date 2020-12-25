FactoryBot.define do
  factory :random_vhs, class: Vhs do
    serial_number { Faker::Number.number(digits: 8) }
    movie factory: :random_movie
  end
end

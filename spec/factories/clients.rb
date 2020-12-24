FactoryBot.define do
  factory :random_client, class: Client do
    name { Faker::Name.female_first_name }
    home_address { Faker::Address.full_address }
  end
  factory :client, class: Client do
    name { Faker::FunnyName.name }
    home_address { Faker::Address.full_address }
  end
end
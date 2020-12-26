FactoryBot.define do
  factory :random_rental, class: Rental do
    vhs factory: :random_vhs
    client factory: :random_client
  end
end

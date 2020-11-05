FactoryBot.define do
  factory :therapist do
    full_name { Faker::Name.name }
    email { Faker::Internet.email }
  end
end
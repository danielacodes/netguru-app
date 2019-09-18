FactoryBot.define do
  factory :user do
    password { "password" }
#    admin { false }
    
    sequence(:name) { |n| "test_user#{n}" }
    sequence(:email) { |n| "#{name}@mail.com" }
    end
end
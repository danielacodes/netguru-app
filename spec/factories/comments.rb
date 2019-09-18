FactoryBot.define do
  factory :comment do
    user_name { "user" }
    body { "MyText" }
#    movie_id { "1" }
    
#    sequence(:movie_id) { |n| "#{n}" }
  end
end



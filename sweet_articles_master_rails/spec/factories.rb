FactoryGirl.define do
  sequence(:name) {|i| "name#{i}"}  

  factory :category do
    name
  end

  factory :article do
    title { Faker::Lorem.word}
    url { "/month/day/year/#{title}"}
    description { Faker::Lorem.sentence}
  end

  factory :tag do
    name { Faker::Lorem.word}
  end
end

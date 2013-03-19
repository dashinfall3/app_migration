# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

50.times do |i|
  categories = ["business", "Business", "computer world", "computer-world", "HEALTH", "Sports", "sport", "programming"]
  tags = %w{ cloud random random-tags cloud widget medicine art music love hate tech computer ruby rails jquery}
  OldArticle.create :title => Faker::Lorem.words(3).join(' '),
                 :description => Faker::Lorem.paragraph,
                 :category => categories.sample,
                 :tags => tags.sample(rand(4)).join(', ')
end

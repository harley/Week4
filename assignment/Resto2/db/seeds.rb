# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

if Section.count == 0
  Section.create!(name: 'Breakfast')
  Section.create!(name: 'Lunch')
  Section.create!(name: 'Dinner')
  Section.create!(name: 'Dessert')
end

if Item.count == 0
  Section.all.each do |section|
    4.times do |index|
      a = Item.create!(name:Faker::Food.dish,description:Faker::Food.ingredient,price:rand(10..200) * 1000,section: section)
      a.image_url = "#{section.name}#{index+1}.jpg"# Breakfast1.jpg
      a.save!
    end
  end
end




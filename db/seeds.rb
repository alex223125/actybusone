# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


############### Test user_administration
user = User.new(email: "test@test.com", password: "12345")
user.save(validate: false)

############### Direction categories
Directions::DirectionCategory.find_or_create_by(name: 'Energy')
Directions::DirectionCategory.find_or_create_by(name: 'Trees')
Directions::DirectionCategory.find_or_create_by(name: 'Recycling')
Directions::DirectionCategory.find_or_create_by(name: 'Uncategorised')

############### Directions
category = Directions::DirectionCategory.find_by(name: 'Uncategorised')
Directions::Direction.find_or_create_by(name: 'Main', direction_category: category)

############## Quests
# Difficulty
["Very easy", "Easy", "Medium", "Hard", "Very hard"].each do |difficulty|
  Quests::Difficulty.find_or_create_by(title: difficulty)
end

# Regularity
["Daily", "Weekly", "Once per two weeks", "Monthly", "Yearly"].each do |difficulty|
  Quests::Regularity.find_or_create_by(title: difficulty)
end


############### Pins

### PinContentCategory
["Video", "Picture", "Gif"].each do |pin_content_category|
  PinContentCategory.find_or_create_by(title: pin_content_category)
end
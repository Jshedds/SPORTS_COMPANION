# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning the database...."
Sport.destroy_all
User.destroy_all
User.create!(email: "colerner@me.com", password: "123456")
User.create!(email: "jamie@jamie.com", password: "123456")
User.create!(email: "thomas@thomas.com", password: "123456")
User.create!(email: "bruno@bruno.com", password: "123456")

bball = {
  name: "Basketball"
}

soccer = {
  name: "Football"
}

rugby = {
  name: "Rugby"
}

football = {
  name: "American Football"
}

puts "Creating new sports..."
[bball, soccer, rugby, football]. each do |attributes|
sport = Sport.create!(attributes)
puts "Created #{sport.name}"
end
puts "finished"

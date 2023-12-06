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
User.create!(email: "colerner@me.com", password: "123456", admin: true, username: "Conny")
User.create!(email: "jamie@jamie.com", password: "123456", admin: true, username: "Jamie")
User.create!(email: "thomas@thomas.com", password: "123456", admin: true, username: "Thomas")
User.create!(email: "bruno@bruno.com", password: "123456", admin: true, username: "Bruno")

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
  name: "American Football",
  overview_attributes: {
    short_description: "tackle people",
    game_objective: "score tds",
    governing_body_url: "nfl.com"
  },
  equipment_need_attributes: {
    footwear: "fill here",
    required_equipment: "fill here",
    safety_gear: "fill here",
    infrastructure: "fill here",
    clothing: "fill here"
  },
  history_attributes: {
    invented: 2.days.ago,
    creator: "fill here",
    country_of_origin: "fill here",
    most_successful_teams: "fill here",
    milestones: "fill here"
  },
  positions_attributes: { "0" => {
    positions_name: "fill here",
    positions_tag: "fill here",
    }
    description_attributes: {
      overview_of_position: "blabla",
      primary_objectives: "blabla",
      strengths: "blabla",
      weaknesses: "blabla"
    }
  }
}

puts "Creating new sports..."
[bball, soccer, rugby, football].each do |attributes|
  sport = Sport.create!(attributes)
  puts "Created #{sport.name}"
end
puts "finished"

puts 'Creating Chatroom...'
Sport.all.each do |sport|
  Chatroom.create(name: "#{sport.name} chatroom", sport_id: sport.id)
end

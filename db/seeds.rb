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

BASKETBALL = {
  name: "Basketball",
  overview_attributes: {
    short_description: "Two teams of five throw the ball (basketball) into a hoop to score points. The ball can be moved around by dribbling or passing the ball",
    game_objective: "Score more points than your opponent by throwing the ball into a hoop",
    governing_body_url: "https://videorulebook.nba.com/"
  },
  equipment_need_attributes: {
    footwear: "Any pair of sport shoes will do",
    required_equipment: "A court and basketball",
    safety_gear: "Gum shields and face masks are optional",
    infrastructure: "Court with a basket",
    clothing: "Any type of sports clothing will do"
  },
  history_attributes: {
    invented:  1891,
    creator: "James Naismith",
    country_of_origin: "United States of America",
    most_successful_teams: "Los Angeles Lakers, Boston Celtics, Chicago Bulls",
    milestones: "1892 -> the first official game of basketball is played at the YMCA gym in Albany, New York. 1949 -> the BAA merges with the NBL to the create the NBA(National Basketball Association). 1992 -> The 'Dream Team' wins the Olympics in Barcelona"
  },
  terminology_attributes: {
    most_important_terms: "Air ball -> An unblocked shot that fails to hit the the rim or backboard. Block -> to tip or deflect a players shot. Rebound -> to catch the ball after a missed field goal attempt. Assist -> a pass to a teammate who immediately scores a basket. Steal -> to gain possession of the ball from the opposing team by intercepting a pass. Free throw -> an unopposed attempt to score a basket from the free throw line, usually after a foul was commited",
  },
  rule_attributes: {
    game_duration: "4 twelve minutes quarters",
    scoring: "Any basket scored from outside the three point arc is worth three points, baskets scored within the three point arc are worth two points. Free throws are worth one point each",
    player_per_team: 5,
    referees: 3,
    most_important_rules: "The ball can only be moved by either dribbling (bouncing the ball) or passing the ball. Each team has 24 seconds to at leasst take a shot at the basket, after that the ball is turned over to the opposing team. After each successfull basket the ball is turned over to the opposing team. Fouls commited are accumulated, if a player reaches 6 fouls he is ejected from the game",
    field_size: "Rectangular shaped measuring 91 feet long and 50 feet wide",
    field_type: "polished wood",
  },
  positions_attributes: { "0" => {
    positions_name: "Point Guards, Shooting Guard, Small Forward, Power Forward, Center",
    positions_tag: "PG, SG, SF, PF, C",
    description_attributes: {
      overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
      primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
      strengths: "Best ball handles, passer and decision maker on the team",
      weaknesses: "Most often the smallest player on the floor"
    },
    famous_players_attributes: { "0" => {
      name: "Earvin 'Magic' Johnson",
      appearances: 906,
      trophies_won: 5,
      teams_countries: "LA Lakers, Team USA"
    }}
  }}
}

FOOTBALL = {
  name: "Football",
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
  terminology_attributes: {
    most_important_terms: "fill here",
  },
  rule_attributes: {
    game_duration: "fill here",
    scoring: "fill here",
    player_per_team: 0,
    referees: 0,
    most_important_rules: "fill here",
    field_size: "fill here",
    field_type: "fill here",
  },
  positions_attributes: { "0" => {
    positions_name: "fill here",
    positions_tag: "fill here",
    description_attributes: {
      overview_of_position: "blabla",
      primary_objectives: "blabla",
      strengths: "blabla",
      weaknesses: "blabla"
    },
    famous_players_attributes: { "0" => {
      name: "fill here",
      appearances: 0,
      trophies_won: 0,
      teams_countries: "fill here"
    }}
  }}
}

RUGBY_UNION = {
  name: "Rugby Union",
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
  terminology_attributes: {
    most_important_terms: "fill here",
  },
  rule_attributes: {
    game_duration: "fill here",
    scoring: "fill here",
    player_per_team: 0,
    referees: 0,
    most_important_rules: "fill here",
    field_size: "fill here",
    field_type: "fill here",
  },
  positions_attributes: { "0" => {
    positions_name: "fill here",
    positions_tag: "fill here",
    description_attributes: {
      overview_of_position: "blabla",
      primary_objectives: "blabla",
      strengths: "blabla",
      weaknesses: "blabla"
    },
    famous_players_attributes: { "0" => {
      name: "fill here",
      appearances: 0,
      trophies_won: 0,
      teams_countries: "fill here"
    }}
  }}
}

AMERICAN_FOOTBALL = {
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
  terminology_attributes: {
    most_important_terms: "fill here"
  },
  rule_attributes: {
    game_duration: "fill here",
    scoring: "fill here",
    player_per_team: 0,
    referees: 0,
    most_important_rules: "fill here",
    field_size: "fill here",
    field_type: "fill here"
  },
  positions_attributes: { "0" => {
    positions_name: "fill here",
    positions_tag: "fill here",
    description_attributes: {
      overview_of_position: "blabla",
      primary_objectives: "blabla",
      strengths: "blabla",
      weaknesses: "blabla"
    },
    famous_players_attributes: { "0" => {
      name: "fill here",
      appearances: 0,
      trophies_won: 0,
      teams_countries: "fill here"
    }}
  }}
}

puts "Creating new sports..."
[BASKETBALL, FOOTBALL, RUGBY_UNION, AMERICAN_FOOTBALL].each do |attributes|
  sport = Sport.create!(attributes)
  puts "Created #{sport.name}"
end
puts "finished"

puts 'Creating Chatroom...'
Sport.all.each do |sport|
  Chatroom.create(name: "#{sport.name} chatroom", sport_id: sport.id)
end

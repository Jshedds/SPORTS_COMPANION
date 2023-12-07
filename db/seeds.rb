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
Chatroom.destroy_all
Sport.destroy_all
User.destroy_all
User.create!(email: "colerner@me.com", password: "123456", admin: true, username: "Conny")
User.create!(email: "jamie@jamie.com", password: "123456", admin: true, username: "Jamie")
User.create!(email: "thomas@thomas.com", password: "123456", admin: true, username: "Thomas")
User.create!(email: "bruno@bruno.com", password: "123456", admin: true, username: "Bruno")

BASKETBALL = {
  name:"Basketball",
  overview_attributes: {
    short_description: "Two teams of five throw the ball (basketball) into a hoop to score points. The ball can be moved around by dribbling or passing the ball",
    game_objective: "Score more points than your opponent by throwing the ball into a hoop",
    governing_body_url: "https://videorulebook.nba.com/"
  },
  equipment_need_attributes: {
    footwear: "Any pair of sport shoes will do",
    required_equipment: "A court and basketball",
    safety_gear: "Mouthguard and face masks are optional",
    infrastructure: "Court with a basket",
    clothing: "Any type of sports clothing will do"
  },
  history_attributes: {
    invented: "Year: 1891",
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
    field_type: "Polished Wood",
  },
    positions_attributes: {
      "0" => {
        positions_name: "Point Guard",
        positions_tag: "PG",
        description_attributes: {
          overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
          primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
          strengths: "Best ball handles, passer and decision maker on the team",
          weaknesses: "Most often the smallest player on the floor"
        },
        famous_players_attributes: { "0" => {
          famous_player_name: "Earvin 'Magic' Johnson",
          appearances: 906,
          trophies_won: 5,
          teams_countries: "LA Lakers, Team USA"
        }}
      },
      "1" => {
        positions_name: "Shooting Guard",
        positions_tag: "SG",
        description_attributes: {
          overview_of_position: "Typically responsible for scoring points by taking shots, especially from long range",
          primary_objectives: "Excel in scoring, often a team's primary perimeter shooter",
          strengths: "Strong shooting skills, often quick and agile",
          weaknesses: "May not be as involved in playmaking as a point guard"
        },
        famous_players_attributes: { "0" => {
          famous_player_name: "Michael Jordan",
          appearances: 1072,
          trophies_won: 6,
          teams_countries: "Chicago Bulls, Washington Wizards, Team USA"
        }}
      },
      "2" => {
        positions_name: "Small Forward",
        positions_tag: "SF",
        description_attributes: {
          overview_of_position: "Versatile player who can contribute both offensively and defensively",
          primary_objectives: "Score points, rebound, and assist teammates; often considered a team's most well-rounded player",
          strengths: "Balanced skills in scoring, rebounding, and defense",
          weaknesses: "May not specialize in a specific aspect of the game"
        },
        famous_players_attributes: { "0" => {
          famous_player_name: "Lebron James",
          appearances: 1310,
          trophies_won: 4,
          teams_countries: "LA Lakers, Miami Heat, Cleveland Cavaliers, Team USA"
        }}
      },
      "3" => {
        positions_name: "Power Forward",
        positions_tag: "PF",
        description_attributes: {
          overview_of_position: "Typically a strong and physical player who plays close to the basket",
          primary_objectives: "Score points in the post, rebound, and provide interior defense",
          strengths: "Strong, rebounder, and capable of scoring in and around the paint",
          weaknesses: "May not have the agility or perimeter skills of smaller players"
        },
        famous_players_attributes: { "0" => {
          famous_player_name: "Tim Duncan",
          appearances: 1392,
          trophies_won: 5,
          teams_countries: "San Antonio Spurs, Team USA"
        }}
      },
      "4" => {
        positions_name: "Center",
        positions_tag: "C",
        description_attributes: {
          overview_of_position: "Typically the tallest player on the team, responsible for scoring near the basket and protecting the rim",
          primary_objectives: "Score point in the post, block shots, and grab rebounds",
          strengths: "Tall and physically imposing, strong in the paint",
          weaknesses: "May lack the agility and perimeter skills of smaller players"
        },
        famous_players_attributes: { "0" => {
          famous_player_name: "Shaquille O'Neal",
          appearances: 1207,
          trophies_won: 4,
          teams_countries: "Boston Celtics, Cleveland Cavaliers, Phoenix Suns, Miami Heat, LA Lakers, Orlando Magic, Team USA"
        }}
      }
    }
}

FOOTBALL = {
  name: "Football",
  overview_attributes: {
    short_description: "Score goals",
    game_objective: "The aim of football is to score more goals then your opponent in a 90 minute playing time frame. The match is split up into two halves of 45 minutes. After the first 45 minutes players will take a 15 minute rest period called half time. The second 45 minutes will resume and any time deemed fit to be added on by the referee (injury time) will be accordingly.",
    governing_body_url: "fifa.com"
  },
  equipment_need_attributes: {
    footwear: "Studded football boots",
    required_equipment: "Matching strips",
    safety_gear: "Shin pads and padded gloves (for goalkeepers)",
    infrastructure: "A football pitch",
    clothing: "Matching shirts, shorts and socks"
  },
  history_attributes: {
    invented: "There aree a lot of depictions to multiple football-like sports played by anciet civilizations but the starting concept of modern football was invented in 1862.",
    creator: "J. C. Thring",
    country_of_origin: "England",
    most_successful_teams: "Colo-Colo, Boca Juniors, Club Olimpia, FCSB, RSC Anderlecht, Liverpool, Galatasaray, Juventus, Ajax, Manchester United, Bayern Munich, Olympiacos FC, SL Benfica, Barcelona, Real Madrid, Celtic, Club Atlético Peñarol, Nacional de Football, Rangers FC",
    milestones: "fill here"
  },
  terminology_attributes: {
    most_important_terms: "Goal, offside, foul, penalty",
  },
  rule_attributes: {
    game_duration: "90 minutes plus compensation",
    scoring: "The ball enters the goal",
    player_per_team: 11,
    referees: 4,
    most_important_rules: "fill here",
    field_size: "fill here",
    field_type: "Natural grass or plastic grass",
  },
  positions_attributes: {
    "0" => {
      positions_name: "Goalkeeper",
      positions_tag: "PG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "1" => {
      positions_name: "Shooting Guard",
      positions_tag: "SG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "2" => {
      positions_name: " Small Forward",
      positions_tag: "SF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "3" => {
      positions_name: "Power Forward",
      positions_tag: "PF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "4" => {
      positions_name: "Center",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "5" => {
      positions_name: "Point Guard",
      positions_tag: "PG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "6" => {
      positions_name: "Shooting Guard",
      positions_tag: "SG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "7" => {
      positions_name: " Small Forward",
      positions_tag: "SF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "8" => {
      positions_name: "Power Forward",
      positions_tag: "PF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "9" => {
      positions_name: "Center",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "10" => {
      positions_name: "Striker",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    }
  }
}

RUGBY_UNION = {
  name: "Rugby Union",
  overview_attributes: {
    short_description: "Rugby is a game played at all ages and abilities where 2 teams face off and try to score more points than each other. There are 8 forwards and 7 backs on each team as standard. The team that has possession can only pass the ball backwards or can kick tactically to move around the field.",
    game_objective: "To score more points through tries, conversions, penalties and drop goals than the other team.",
    governing_body_url: "www.world.rugby"
  },
  equipment_need_attributes: {
    footwear: "Rugby boots that have studs on the bottom for grip",
    required_equipment: "A rugby pitch and a rugby ball",
    safety_gear: "Mouthguards, shoulder pads, headguards are all optional",
    infrastructure: "A field with marked lines and a set of posts at either end at the beginning of the try line",
    clothing: "Rugby shorts, jersey, and long socks."
  },
  history_attributes: {
    invented: "Year: 1823",
    creator: "William Webb Ellis",
    country_of_origin: "England",
    most_successful_teams: "International: South Africa, 4 world championships, European/Champions Cup: Toulouse, 5 titles, Super Rugby: Crusaders, 12 titles ",
    milestones: "The first international rugby union match took place between Scotland and England on 27th of March 1871 at Raeburn Place, Edinburgh, Scotland. The sport turned professional in 1995."
  },
  terminology_attributes: {
    most_important_terms: "fill here",
  },
  rule_attributes: {
    game_duration: "80 minutes at professional level",
    scoring: "5 points for a try, 2 for a conversion",
    player_per_team: 0,
    referees: 0,
    most_important_rules: "fill here",
    field_size: "fill here",
    field_type: "fill here",
  },
  positions_attributes: {
    "0" => {
      positions_name: "Loosehead Prop",
      positions_tag: "PG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "1" => {
      positions_name: "Hooker",
      positions_tag: "SG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "2" => {
      positions_name: "Tighthead Prop",
      positions_tag: "SF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "3" => {
      positions_name: "Second Row",
      positions_tag: "PF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "4" => {
      positions_name: "Second Row",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "5" => {
      positions_name: "Blindside Flanker",
      positions_tag: "PG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "6" => {
      positions_name: "Openside Flanker",
      positions_tag: "SG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "7" => {
      positions_name: "Number 8",
      positions_tag: "SF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "8" => {
      positions_name: "Scrum Half",
      positions_tag: "PF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "9" => {
      positions_name: "Stand Off",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "10" => {
      positions_name: "Left Wing",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "11" => {
      positions_name: "Inside Centre",
      positions_tag: "SF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "12" => {
      positions_name: "Outside Centre",
      positions_tag: "PF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "13" => {
      positions_name: "Right Wing",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "14" => {
      positions_name: "Fullback",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    }
  }
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
  positions_attributes: {
    "0" => {
      positions_name: "Point Guard",
      positions_tag: "PG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "1" => {
      positions_name: "Shooting Guard",
      positions_tag: "SG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "2" => {
      positions_name: " Small Forward",
      positions_tag: "SF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "3" => {
      positions_name: "Power Forward",
      positions_tag: "PF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "4" => {
      positions_name: "Center",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "5" => {
      positions_name: "Point Guard",
      positions_tag: "PG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "6" => {
      positions_name: "Shooting Guard",
      positions_tag: "SG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "7" => {
      positions_name: " Small Forward",
      positions_tag: "SF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "8" => {
      positions_name: "Power Forward",
      positions_tag: "PF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "9" => {
      positions_name: "Center",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "10" => {
      positions_name: "Center",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "11" => {
      positions_name: "Point Guard",
      positions_tag: "PG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "12" => {
      positions_name: "Shooting Guard",
      positions_tag: "SG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "13" => {
      positions_name: " Small Forward",
      positions_tag: "SF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "14" => {
      positions_name: "Power Forward",
      positions_tag: "PF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "15" => {
      positions_name: "Center",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "16" => {
      positions_name: "Point Guard",
      positions_tag: "PG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "17" => {
      positions_name: "Shooting Guard",
      positions_tag: "SG",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "18" => {
      positions_name: " Small Forward",
      positions_tag: "SF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "19" => {
      positions_name: "Power Forward",
      positions_tag: "PF",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "20" => {
      positions_name: "Center",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "21" => {
      positions_name: "Center",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time",
        primary_objectives: "Facilitate scoring opportunities for their team or sometimes for themselves",
        strengths: "Best ball handles, passer and decision maker on the team",
        weaknesses: "Most often the smallest player on the floor"
      },
      famous_players_attributes: { "0" => {
        famous_player_name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    }
  }
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

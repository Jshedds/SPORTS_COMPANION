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
          name: "Earvin 'Magic' Johnson",
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
          name: "Michael Jordan",
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
          name: "Lebron James",
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
          name: "Tim Duncan",
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
          name: "Shaquille O'Neal",
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
      positions_name: "Point Guard",
      positions_tag: "PG",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
      positions_name: "Point Guard",
      positions_tag: "PG",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
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
        name: "Earvin 'Magic' Johnson",
        appearances: 906,
        trophies_won: 5,
        teams_countries: "LA Lakers, Team USA"
      }}
    },
    "11" => {
      positions_name: " Small Forward",
      positions_tag: "SF",
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
    },
    "12" => {
      positions_name: "Power Forward",
      positions_tag: "PF",
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
    },
    "13" => {
      positions_name: "Center",
      positions_tag: "C",
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
    },
    "14" => {
      positions_name: "Center",
      positions_tag: "C",
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
    }
  }
}

AMERICAN_FOOTBALL = {
  name: "American Football",
  overview_attributes: {
    short_description: "Team with the ball attempts to advance the ball and score touchdowns while the opposing team tries to prevent this",
    game_objective: "Score touchdowns and field goals to accumulate points",
    governing_body_url: "https://operations.nfl.com/inside-football-ops/nfl-operations/integrity-of-the-game/"
  },
  equipment_need_attributes: {
    footwear: "Football cleats",
    required_equipment: "Helmet, shoulder pads, thigh pads, knee pads, jersey, pants, and football",
    safety_gear: "Mouthguard, protective padding",
    infrastructure: "Football field with goalposts",
    clothing: "Team uniform"
  },
  history_attributes: {
    invented: "Year: 1869",
    creator: "Walter Camp",
    country_of_origin: "United States",
    most_successful_teams: "New England Patriots, Pittsburgh Steelers, Dallas Cowboys",
    milestones: "First Super Bowl held in 1967"
  },
  terminology_attributes: {
    most_important_terms: "Touchdown, field goal, interception, fumble, kickoff"
  },
  rule_attributes: {
    game_duration: "Four quarters of 15 minutes each",
    scoring: "Touchdown (6 points), field goal (3 points), safety (2 points)",
    player_per_team: 11,
    referees: 7,
    most_important_rules: "Four downs to advance the ball 10 yards, scoring by crossing the opponent's goal line",
    field_size: "100 yards long, 160 feet wide",
    field_type: "Grass or artificial turf"
  },
  positions_attributes: {
    "0" => {
      positions_name: "Quarterback",
      positions_tag: "QB",
      description_attributes: {
        overview_of_position: "Leads the offense, responsible for pssing and decision-making",
        primary_objectives: "Passing the ball accurately, leading the offense, making strategic decision",
        strengths: "Strong arm, accuracy, decision-making",
        weaknesses: "Vulnerable to sacks, heavy defensive pressure"
      },
      famous_players_attributes: { "0" => {
        name: "Tom Brady",
        appearances: 310,
        trophies_won: 7,
        teams_countries: "New England Patriots, Tampa Bay Buccaneers"
      }}
    },
    "1" => {
      positions_name: "Runningback",
      positions_tag: "RB",
      description_attributes: {
        overview_of_position: "Carries the ball, primarily a rushing and receiving threat",
        primary_objectives: "Running with the ball, catching passes, blocking",
        strengths: "Speed, strength, agility, ball-carrying, vision",
        weaknesses: "Subject to tackles, heavy contact, and injuries"
      },
      famous_players_attributes: { "0" => {
        name: "Adrian Peterson",
        appearances: 164,
        trophies_won: 1,
        teams_countries: "Minnesota Vikings, Arizona Cardinals, Washington Football Team, Detroit Lions"
      }}
    },
    "2" => {
      positions_name: "Tight End",
      positions_tag: "TE",
      description_attributes: {
        overview_of_position: "Combination of offensive lineman and receiver, versatile player",
        primary_objectives: "Blocking, catching passes, providing additional protection for the quarterback",
        strengths: "Size, strength, receiving skills, blocking skills",
        weaknesses: "Balancing blocking and receiving responsibilities"
      },
      famous_players_attributes: { "0" => {
        name: "Rob Gronkowski",
        appearances: 140,
        trophies_won: 4,
        teams_countries: "New England Patriots, Tampa Bay Buccaneers"
      }}
    },
    "3" => {
      positions_name: "Wide Receiver - X",
      positions_tag: "WR-X",
      description_attributes: {
        overview_of_position: "Primary deep threat, lines up on the line of scrimmage",
        primary_objectives: "Run deep routes, catch contested passes, stretch the field",
        strengths: "Speed, height, catch radius, ball-skills",
        weaknesses: "Physical press coverage, double-teams"
      },
      famous_players_attributes: { "0" => {
        name: "DeAndre Hopkins",
        appearances: 121,
        trophies_won: 0,
        teams_countries: "Houston Texans, Arizona Cardinals, Tennessee Titans"
      }}
    },
    "4" => {
      positions_name: "Wide Receiver - Y",
      positions_tag: "WR-Y",
      description_attributes: {
        overview_of_position: "Slot receiver, lines up off the line of scrimmage",
        primary_objectives: "Run precise routes, exploit matchups, catch passes over the middle",
        strengths: "Quickness, agility, route-running",
        weaknesses: "Physical coverage, risk of heavy hits in traffic"
      },
      famous_players_attributes: { "0" => {
        name: "Julian Edelman",
        appearances: 137,
        trophies_won: 3,
        teams_countries: "New England Patriots"
      }}
    },
    "5" => {
      positions_name: "Wide Reciver - Z",
      positions_tag: "WR-Z",
      description_attributes: {
        overview_of_position: "Versatile receiver, lines up in various positions, including the slot",
        primary_objectives: "Running various routes, catching passes in traffic, YAC (yards after catch)",
        strengths: "Agility, route-running, versatility",
        weaknesses: "Physical coverage by defenders"
      },
      famous_players_attributes: { "0" => {
        name: "Larry Fitzgerald",
        appearances: 263,
        trophies_won: 0,
        teams_countries: "Arizona Cardinals"
      }}
    },
    "6" => {
      positions_name: "Left Tackle",
      positions_tag: "LT",
      description_attributes: {
        overview_of_position: "Protects the quarterback's blind side (if he throws righty(majority do)), key pass blocker",
        primary_objectives: "Blocking against elite pass rushers, creating a pocket for the quarterback",
        strengths: "Size, agility, pass protections skills",
        weaknesses: "Facing elite edge rushers, speed rushers"
      },
      famous_players_attributes: { "0" => {
        name: "Anthony Munoz",
        appearances: 185,
        trophies_won: 0,
        teams_countries: "Cincinatti Bengals"
      }}
    },
    "7" => {
      positions_name: "Left Guard",
      positions_tag: "LG",
      description_attributes: {
        overview_of_position: "Interior offensive lineman, key in run blocking and pass protection",
        primary_objectives: "Opening running lanes, pass protection, supporting the center",
        strengths: "Strength, run blocking, awareness",
        weaknesses: "Facing powerful defensive tackles, interior pass rush"
      },
      famous_players_attributes: { "0" => {
        name: "Quenton Nelson",
        appearances: 48,
        trophies_won: 0,
        teams_countries: "Indianapolis Colts"
      }}
    },
    "8" => {
      positions_name: "Center",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Snaps the ball to the quarterback, anchors the offensive line",
        primary_objectives: "Snapping accurately, pass protection, calling blocking assignments",
        strengths: "Intelligence, snapping skills, communication",
        weaknesses: "Powerful nose tackles, bull rush from defensive tackles"
      },
      famous_players_attributes: { "0" => {
        name: "Jason Kelce",
        appearances: 136,
        trophies_won: 1,
        teams_countries: "Philadelphia Eagles"
      }}
    },
    "9" => {
      positions_name: "Right Guard",
      positions_tag: "RG",
      description_attributes: {
        overview_of_position: "Interior offensive lineman, contributes to run blocking and pass protection",
        primary_objectives: "Creating running lanes, pass protection, supporting the tackle",
        strengths: "Strength, agility, run blocking",
        weaknesses: "Facing powerful defensive tackles, interior pass rush"
      },
      famous_players_attributes: { "0" => {
        name: "Zack Martin",
        appearances: 95,
        trophies_won: 0,
        teams_countries: "Dallas Cowboys"
      }}
    },
    "10" => {
      positions_name: "Right Tackle",
      positions_tag: "RT",
      description_attributes: {
        overview_of_position: "Pass blocker on the right side, protects the quarterback's front side",
        primary_objectives: "Blocking against edge rushers, run blocking on the right side",
        strengths: "Size, pass protection skills, run blocking",
        weaknesses: "Facing elite edge rushers, speed rushers"
      },
      famous_players_attributes: { "0" => {
        name: "Orlando Pace",
        appearances: 169,
        trophies_won: 1,
        teams_countries: "St. Louis Rams, Chicago Bears"
      }}
    },
    "11" => {
      positions_name: "Left Defensive End",
      positions_tag: "LDE",
      description_attributes: {
        overview_of_position: "Defensive lineman on the left side, disrupts runs and rushes the quarterback",
        primary_objectives: "Tackling runners, pass rushing, setting the edge",
        strengths: "Size, strength, flexibility, speed, pass-rushing skills",
        weaknesses: "Double-team blocking, containment responsiblities"
      },
      famous_players_attributes: { "0" => {
        name: "Reggie White",
        appearances: 232,
        trophies_won: 1,
        teams_countries: "Philadelphia Eagles, Green Bay Packers"
      }}
    },
    "12" => {
      positions_name: "Defensive Tackle - 3 Tech",
      positions_tag: "DT-3T",
      description_attributes: {
        overview_of_position: "Interior defensive lineman, lines up on the outside shoulder of the guard",
        primary_objectives: "Tackling runners, disrupting the interior offensive line, pass rushing",
        strengths: "Quickness, strength, penetration ability",
        weaknesses: "Double-team blocking, lateral movenemtn"
      },
      famous_players_attributes: { "0" => {
        name: "Aaron Donald",
        appearances: 117,
        trophies_won: 2,
        teams_countries: "Los Angeles Rams"
      }}
    },
    "13" => {
      positions_name: "Defensive Tackle - Noseguard",
      positions_tag: "DT-Nose",
      description_attributes: {
        overview_of_position: "Interior defensive lineman, lines up directly over the center",
        primary_objectives: "Tackling runners, occupying blockers, disrupting the center",
        strengths: "Size, strength, anchor against the run",
        weaknesses: "Double-team blocking, lateral movement"
      },
      famous_players_attributes: { "0" => {
        name: "Damon Harrison",
        appearances: 131,
        trophies_won: 0,
        teams_countries: "New York Giants, Detroit Lions"
      }}
    },
    "14" => {
      positions_name: "Right Defensive End",
      positions_tag: "RDE",
      description_attributes: {
        overview_of_position: "Defensive lineman on the right side, disrupts runs and rushes the quarterback",
        primary_objectives: "Tackling runners, pass rushing, setting the edge",
        strengths: "Size, strength, speed, flexibility, pass-rushing skills",
        weaknesses: "Double-team blocking, containment responsiblities"
      },
      famous_players_attributes: { "0" => {
        name: "J.J. Watt",
        appearances: 128,
        trophies_won: 0,
        teams_countries: "Houston Texans, Arizona Cardinals"
      }}
    },
    "15" => {
      positions_name: "Right Outside Linebacker",
      positions_tag: "ROLB",
      description_attributes: {
        overview_of_position: "Linebacker on the right side, versatile player in run support and pass coverage",
        primary_objectives: "Tackling runners, pass coverage, edge containment",
        strengths: "Speed, tackling ability, coverage skills",
        weaknesses: "Physical blockers, quick releases by receivers"
      },
      famous_players_attributes: { "0" => {
        name: "Von Miller",
        appearances: 134,
        trophies_won: 2,
        teams_countries: "Denver Broncos, Los Angeles Rams, Buffalo Bills"
      }}
    },
    "16" => {
      positions_name: "Middle Linebacker",
      positions_tag: "MLB",
      description_attributes: {
        overview_of_position: "Central Linebacker, often the leader of the defense, involved in various tasks",
        primary_objectives: "Tackling, play-calling, coverage responsibilities",
        strengths: "Tackling ability, football IQ, leadership",
        weaknesses: "Coverage against agile receivers"
      },
      famous_players_attributes: { "0" => {
        name: "Luke Kuechly",
        appearances: 118,
        trophies_won: 0,
        teams_countries: "Carolina Panthers"
      }}
    },
    "17" => {
      positions_name: "Left Outside Linebacker",
      positions_tag: "LOLB",
      description_attributes: {
        overview_of_position: "Linebacker on the left side of the defense, versatile role",
        primary_objectives: "Coverage, pass rushing, run defense",
        strengths: "Versatility, coverage skills, tackling",
        weaknesses: "Facing strong right tackles, shedding blocks"
      },
      famous_players_attributes: { "0" => {
        name: "Lawrence Taylor",
        appearances: 184,
        trophies_won: 2,
        teams_countries: "New York Giants"
      }}
    },
    "18" => {
      positions_name: "Left Cornerback",
      positions_tag: "LCB",
      description_attributes: {
        overview_of_position: "Covers the left side of the field, often against the opponent's top reciever",
        primary_objectives: "Man-to-man coverage, interceptions, preventing receptions (pass breakups)",
        strengths: "Speed, agility, coverage skills",
        weaknesses: "Physical battles with receivers, risk of pass interference"
      },
      famous_players_attributes: { "0" => {
        name: "Richard Sherman",
        appearances: 139,
        trophies_won: 1,
        teams_countries: "Seattle Seahawks, San Francisco 49ers"
      }}
    },
    "19" => {
      positions_name: "Right Cornerback",
      positions_tag: "RCB",
      description_attributes: {
        overview_of_position: "Covers the right side of the field, often against the opponent's top receiver",
        primary_objectives: "Man-to-man coverage, interceptions, preventing receptions (pass breakups)",
        strengths: "Speed, agility, coverage skills",
        weaknesses: "Physical battles with receivers, risk of pass interference"
      },
      famous_players_attributes: { "0" => {
        name: "Darrelle Revis",
        appearances: 145,
        trophies_won: 1,
        teams_countries: "New York Jets, New England Patriots"
      }}
    },
    "20" => {
      positions_name: "Free Safety",
      positions_tag: "FS",
      description_attributes: {
        overview_of_position: "Defends against deep passes, often plays a centerfield role",
        primary_objectives: "Pass coverage, interceptions, preventing long passes",
        strengths: "Ball-hawking skills, tackling ability",
        weaknesses: "Balancing run support and pass coverage"
      },
      famous_players_attributes: { "0" => {
        name: "Earl Thomas",
        appearances: 140,
        trophies_won: 1,
        teams_countries: "Seattle Seahawks"
      }}
    },
    "21" => {
      positions_name: "Strong Safety",
      positions_tag: "SS",
      description_attributes: {
        overview_of_position: "Defends against the run and provides additional support in pass coverage",
        primary_objectives: "Run support, tackling, coverage responsibilties",
        strengths: "Tackling ability, physicality, football IQ",
        weaknesses: "Coverage against agile tight ends, deep pass coverage"
      },
      famous_players_attributes: { "0" => {
        name: "Troy Polamalu",
        appearances: 158,
        trophies_won: 2,
        teams_countries: "Pittsburgh Steelers"
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

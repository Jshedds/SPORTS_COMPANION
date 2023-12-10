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
        famous_player_attributes: {
          famous_player_name: "Earvin 'Magic' Johnson",
          individual_milestones: "1st overall pick, 3x NBA Finals MVP, 3x NBA MVP",
          team_trophies_won: "5x NBA Champion, Olympic gold medal",
          teams_countries: "LA Lakers, Team USA"
        }
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
        famous_player_attributes: {
          famous_player_name: "Michael Jordan",
          individual_milestones: "6x NBA Finals MVP, 5x NBA MVP",
          team_trophies_won: "6x NBA Champion, 2x Olympic gold medal",
          teams_countries: "Chicago Bulls, Washington Wizards, Team USA"
        }
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
        famous_player_attributes: {
          famous_player_name: "Lebron James",
          individual_milestones: "4x NBA Finals MVP, 4x NBA MVP",
          team_trophies_won: "4x NBA Champion, 2x Olympic gold medal",
          teams_countries: "LA Lakers, Miami Heat, Cleveland Cavaliers, Team USA"
        }
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
        famous_player_attributes: {
          famous_player_name: "Tim Duncan",
          individual_milestones: "3x NBA Finals MVP, 2x NBA MVP",
          team_trophies_won: "5x NBA Champion",
          teams_countries: "San Antonio Spurs, Team USA"
        }
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
        famous_player_attributes: {
          famous_player_name: "Shaquille O'Neal",
          individual_milestones: "3x NBA Finals MVP, NBA MVP",
          team_trophies_won: "4x NBA Champion, Olympic gold medal",
          teams_countries: "Boston Celtics, Cleveland Cavaliers, Phoenix Suns, Miami Heat, LA Lakers, Orlando Magic, Team USA"
        }
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
    game_duration: "Two 45 minutes halves plus compensation",
    scoring: "The ball enters the goal",
    player_per_team: 11,
    referees: 4,
    most_important_rules: "A match consists of two 45 minutes halves with a 15 minute rest period in between. Each team can have a minimum off 11 players (including 1 goalkeeper who is the only player allowed to handle the ball within the 16,5 meters) and a minimum of 7 players are needed to constitute a match. The pitch must be marked with a rectangular shape around the outside showing out of bounds, two 5,5 meter boxes, two 16,5 meter boxes and a centre circle. A spot for a penalty placed 11 meters out of both goals and centre circle must also be visible. Each game must include one referee and two assistant referee's (linesmen). It's the job of the referee to act as time keeper and make any decisions which may need to be made such as fouls, free kicks, throw ins, penalties and added on time at the end of each half. The referee may consult the assistant referees at any time in the match regarding a decision. It's the assistant referee's job to spot offside's in the match, throw ins for either team and also assist the referee in all decision making processes where appropriate. If the game needs to head to extra time as a result of both teams being level in a match then 30 minutes will be added in the form of two 15 minute halves after the allotted 90 minutes. If teams are still level after extra time then a penalty shootout must take place. The whole ball must cross the goal line for it to constitute as a goal. For fouls committed a player could receive either a yellow or red card depending on the severity of the foul; this comes down to the referee's discretion. The yellow is a warning and a red card is a dismissal of that player. Two yellow cards will equal one red. Once a player is sent off then they cannot be replaced. If a ball goes out of play off an opponent in either of the side lines then it is given as a throw in. If it goes out of play off an attacking player on the base line then it is a goal kick. If it comes off a defending player it is a corner kick.",
    field_size: "A pitch can be a minimum of 45 meters in width and 90 meters in length, and a maximum of 90 meters width and 120 meters length.",
    field_type: "Natural or artificial grass",
  },
  positions_attributes: {
    "0" => {
      positions_name: "Goalkeeper",
      positions_tag: "GK",
      description_attributes: {
        overview_of_position: "Last line of defense, prevents the opponent from scoring",
        primary_objectives: "Stopping shots, organizing the defense, distributing the ball",
        strengths: "Shot-stopping, command of the penalty area, distribution",
        weaknesses: "Vulnerable to one-on-one situations, handling crosses"
      },
      famous_player_attributes: {
        famous_player_name: "Manuel Neuer",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "Bayern Munich, Germany"
      }
    },
    "1" => {
      positions_name: "Right-back",
      positions_tag: "RB",
      description_attributes: {
        overview_of_position: "Defender on the right side of the backline",
        primary_objectives: "Defending against wingers, supporting attacks, crossing",
        strengths: "Tackling, positional awareness, crossing",
        weaknesses: "Facing skillsful wingers, defensive responsiblities"
      },
      famous_player_attributes: {
        famous_player_name: "Dani Alves",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "Barcelona, Brazil"
      }
    },
    "2" => {
      positions_name: "Center-back",
      positions_tag: "CB",
      description_attributes: {
        overview_of_position: "Central defender, anchors the defense",
        primary_objectives: "Marking forwards, intercepting passes, aerial duels",
        strengths: "Aerial ability, tackling, leadership",
        weaknesses: "Pace, one-on-one situations"
      },
      famous_player_attributes: {
        famous_player_name: "Earvin 'Magic' Johnson",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
    },
    "3" => {
      positions_name: "Left-back",
      positions_tag: "LB",
      description_attributes: {
        overview_of_position: "Defender on the left side of the backline",
        primary_objectives: "Defending against wingers, supporting attacks, crossing",
        strengths: "Tackling, positional awareness, crossing",
        weaknesses: "Facing skillsful wingers, defensive responsiblities"
      },
      famous_player_attributes: {
        famous_player_name: "Earvin 'Magic' Johnson",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
    },
    "4" => {
      positions_name: "Defensive Midfielder",
      positions_tag: "CDM",
      description_attributes: {
        overview_of_position: "Midfielder with a focus on defensive duties",
        primary_objectives: "Breaking up opposition attacks, shielding the defense",
        strengths: "Tackling, ball-winning, passing",
        weaknesses: "Limited goal-scoring, attacking contribution"
      },
      famous_player_attributes: {
        famous_player_name: "Earvin 'Magic' Johnson",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
    },
    "5" => {
      positions_name: "Central Midfielder",
      positions_tag: "CM",
      description_attributes: {
        overview_of_position: "Midfielder inovlved in both defensive and attacking play",
        primary_objectives: "Distrubiting the ball, controlling the tempo, joining attacks",
        strengths: "Passing, vision, work rate",
        weaknesses: "Limited goal-scoring, defensive responsibilities"
      },
      famous_player_attributes: {
        famous_player_name: "Earvin 'Magic' Johnson",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
    },
    "6" => {
      positions_name: "Attacking Midfielder",
      positions_tag: "CAM",
      description_attributes: {
        overview_of_position: "Midfielder focused on creating scoring opportunities",
        primary_objectives: "Playmaking, scoring goals, providing assists",
        strengths: "Dribbling, creativity, goal-scoring",
        weaknesses: "Defensive responsiblities, physical duels"
      },
      famous_player_attributes: {
        famous_player_name: "Earvin 'Magic' Johnson",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
    },
    "7" => {
      positions_name: "Right Winger",
      positions_tag: "RW",
      description_attributes: {
        overview_of_position: "Forward positioned on the right flank",
        primary_objectives: "Scoring goals, providing assists, dribbling past defenders",
        strengths: "Pace, dribbling, cutting inside",
        weaknesses: "Defensive responsiblities, physical marking"
      },
      famous_player_attributes: {
        famous_player_name: "Earvin 'Magic' Johnson",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
    },
    "8" => {
      positions_name: "Striker",
      positions_tag: "ST",
      description_attributes: {
        overview_of_position: "Primary goal-scorer, positioned centrally",
        primary_objectives: "Scoring goals, creating space, linking up play",
        strengths: "Finishing, positioning, physicality",
        weaknesses: "Defensive responsibilities, marking by defenders"
      },
      famous_player_attributes: {
        famous_player_name: "Earvin 'Magic' Johnson",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
    },
    "9" => {
      positions_name: "Left Winger",
      positions_tag: "LW",
      description_attributes: {
        overview_of_position: "Forward positioned on the left flank",
        primary_objectives: "Scoring goals, providing assists, dribbling past defenders",
        strengths: "Pace, dribbling, cutting inside",
        weaknesses: "Defensive responsiblities, physical marking"
      },
      famous_player_attributes: {
        famous_player_name: "Earvin 'Magic' Johnson",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
    },
    "10" => {
      positions_name: "Center-back",
      positions_tag: "CB",
      description_attributes: {
        overview_of_position: "Central defender, anchors the defense",
        primary_objectives: "Marking forwards, intercepting passes, aerial duels",
        strengths: "Aerial ability, tackling, leadership",
        weaknesses: "Pace, one-on-one situations"
      },
      famous_player_attributes: {
        famous_player_name: "Earvin 'Magic' Johnson",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
    most_important_terms: "Knock-on: When the ball is dropped forward and touches another player or the ground, Forward Pass: When a player passes the ball to another player but it travels forward, Scrum: When a knock-on has occured the game restarts with a scrum where the forward from each team come together and compete for the ball, Lineout: When the ball goes out of play at the edge of the pitch, a number of players usually forwards, restart the game by the hooker throwing the ball in to a player who gets lifted, the opposition can compete, Penalty: When a team commits a foul act the referee penalises them,"
  },
  rule_attributes: {
    game_duration: "80 minutes at professional level",
    scoring: " When a player crosses the try line and touches the ball down they get 5 points for a try, from this a member of the team attempts to kick a conversion worth 2 points if it goes between the posts. If foul play occurs, the team awarded a penalty may try and kick the ball from a tee between the posts which is worth 3 points. In open play a player may do a drop goal where the ball bounces before being kicked through the posts, also worth 3 points",
    player_per_team: 15,
    referees: 3,
    most_important_rules: "fill here",
    field_size: "100m long, 70m wide",
    field_type: "Primarily grass, but can also be played on artificial grass"
  },
  positions_attributes: {
    "0" => {
      positions_name: "Loosehead Prop",
      positions_tag: "LH",
      description_attributes: {
        overview_of_position: "Last line of defense, positioned behind the main defensive line",
        primary_objectives: "Fielding kicks, counter-attacking, supporting the backline",
        strengths: "High ball catching, kicking, positional play",
        weaknesses: "Physical duels, tackling in open play"
      },
      famous_player_attributes: {
        famous_player_name: "Tendai Mtawarira",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "South Africa, Sharks"
      }
    },
    "1" => {
      positions_name: "Hooker",
      positions_tag: "H",
      description_attributes: {
        overview_of_position: "Speedy winger positioned on the right flank",
        primary_objectives: "Finishing tries, supporting attacks, defending against opposition wingers",
        strengths: "Pace, try-scoring ability, agility",
        weaknesses: "Physical marking, defensive responsibilities"
      },
      famous_player_attributes: {
        famous_player_name: "Keith Wood",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "British & Irish Lions, Ireland, Munster, Harlequins"
      }
    },
    "2" => {
      positions_name: "Tighthead Prop",
      positions_tag: "TH",
      description_attributes: {
        overview_of_position: "Midfielder in the backline, often part of attacking plays",
        primary_objectives: "Creating attacking opportunities, defending against opposition centers",
        strengths: "Running lines, passing, defensive skills",
        weaknesses: "Physical collisions, tackling in open play"
      },
      famous_player_attributes: {
        famous_player_name: "Adam Jones",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "British & Irish Lions, Wales, Ospreys, Cardiff Blues, Harlequins"
      }
    },
    "3" => {
      positions_name: "Second Row",
      positions_tag: "SR",
      description_attributes: {
        overview_of_position: "Key playmaker, responsible for directing the team's attack",
        primary_objectives: "Kicking for territory, orchestrating backline moves, decision-making",
        strengths: "Kicking accuracy, tactical awareness, playmaking",
        weaknesses: "Physical tackling, pressure situations"
      },
      famous_player_attributes: {
        famous_player_name: "Martin Johnson",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "British & Irish Lions, England, Leicester Tigers"
      }
    },
    "4" => {
      positions_name: "Second Row",
      positions_tag: "SR",
      description_attributes: {
        overview_of_position: "Link between forwards and backs, delivers the ball from scrums and rucks",
        primary_objectives: "Quick distribution, organizing forwards, defensive work",
        strengths: "Passing accuracy, speed, game management",
        weaknesses: "Physical challenges, tackling largers opponents"
      },
      famous_player_attributes: {
        famous_player_name: "Eben Etzebeth",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "South Africa, Sharks, Toulon, Stormers, Western Province"
      }
    },
    "5" => {
      positions_name: "Blindside Flanker",
      positions_tag: "BF",
      description_attributes: {
        overview_of_position: "Midfielder in the backline, often part of attacking plays",
        primary_objectives: "Creating attacking opportunities, defending against opposition centers",
        strengths: "Running lines, passing, defensive skills",
        weaknesses: "Physical collisions, tackling in open play"
      },
      famous_player_attributes: {
        famous_player_name: "Siya Kolisi",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "South Africa, Sharks, Racing "
      }
    },
    "6" => {
      positions_name: "Openside Flanker",
      positions_tag: "OF",
      description_attributes: {
        overview_of_position: "Speedy winger positioned on the left flank",
        primary_objectives: "Finishing tries, supporting attacks, defending against opposition wingers",
        strengths: "Pace, try-scoring ability, agility",
        weaknesses: "Physical marking, defensive responsibilities"
      },
      famous_player_attributes: {
        famous_player_name: "Richie Mccaw",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "New Zealand, Crusaders"
      }
    },
    "7" => {
      positions_name: "Number 8",
      positions_tag: "N8",
      description_attributes: {
        overview_of_position: "Key playmaker, responsible for directing the team's attack",
        primary_objectives: "Kicking for territory, orchestrating backline moves, decision-making",
        strengths: "Kicking accuracy, tactical awareness, playmaking",
        weaknesses: "Physical tackling, pressure situations"
      },
      famous_player_attributes: {
        famous_player_name: "Sergio Parisse",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "Italy, Stade Francais, "
      }
    },
    "8" => {
      positions_name: "Scrum Half",
      positions_tag: "SH",
      description_attributes: {
        overview_of_position: "Back-row forward, often the primary ball carrier",
        primary_objectives: "Running with the ball, supporting in the open play, leading the forward pack",
        strengths: "Ball-carrying, lineout work, leadership",
        weaknesses: "Defensive responsiblities, breakdown challenges"
      },
      famous_player_attributes: {
        famous_player_name: "Antoine Dupont",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "France, Toulouse"
      }
    },
    "9" => {
      positions_name: "Stand Off",
      positions_tag: "SO",
      description_attributes: {
        overview_of_position: "Back-row forward, specializes in winning possession and disrupting the opposition",
        primary_objectives: "Tackling, competing for the ball, supporting in open play",
        strengths: "Tackling, breakdown work, agility",
        weaknesses: "Ball-carrying, lineout challenges"
      },
      famous_player_attributes: {
        famous_player_name: "Dan Carter",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "Dan Carter, Crusaders, Racing "
      }
    },
    "10" => {
      positions_name: "Left Wing",
      positions_tag: "LW",
      description_attributes: {
        overview_of_position: "Second-row forward, key figure in lineouts and scrums",
        primary_objectives: "Lineout jumping, scrummaging, ball-carrying",
        strengths: "Lineout work, physicality, set-piece play",
        weaknesses: "Mobility, open-play speed"
      },
      famous_player_attributes: {
        famous_player_name: "Jonah Lomu",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "New Zealand, "
      }
    },
    "11" => {
      positions_name: "Inside Centre",
      positions_tag: "IC",
      description_attributes: {
        overview_of_position: "Second-row forward, key figure in lineouts and scrums",
        primary_objectives: "Lineout jumping, scrummaging, ball-carrying",
        strengths: "Lineout work, physicality, set-piece play",
        weaknesses: "Mobility, open-play speed"
      },
      famous_player_attributes: {
        famous_player_name: "Ma'a Nonu",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "New Zealand, Hurricanes, "
      }
    },
    "12" => {
      positions_name: "Outside Centre",
      positions_tag: "OC",
      description_attributes: {
        overview_of_position: "Front-row forward, provides stability in scrums",
        primary_objectives: "Scrummaging, supporting in open play, tackling",
        strengths: "Scrummaging technique, physicality, work rate",
        weaknesses: "Mobility, ball-handling"
      },
      famous_player_attributes: {
        famous_player_name: "Brian O'Driscoll",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "Ireland, Leinster"
      }
    },
    "13" => {
      positions_name: "Right Wing",
      positions_tag: "RW",
      description_attributes: {
        overview_of_position: "Front-row forward, throws the ball into lineouts",
        primary_objectives: "Lineout throwing, scrummaging, tackling",
        strengths: "Lineout accuracy, physicality, set-piece play",
        weaknesses: "Open-play mobility, ball-carrying"
      },
      famous_player_attributes: {
        famous_player_name: "Bryan Habana",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "South Africa, Toulon, "
      }
    },
    "14" => {
      positions_name: "Fullback",
      positions_tag: "FB",
      description_attributes: {
        overview_of_position: "Front-row forward, provides stability in scrums",
        primary_objectives: "Scrummaging, supporting in open play, tackling",
        strengths: "Scrummaging technique, physicality, work rate",
        weaknesses: "Mobility, ball-handling"
      },
      famous_player_attributes: {
        famous_player_name: "Stuart Hogg",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "Scotland, Glasgow Warriors, Exeter Chiefs"
      }
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
      famous_player_attributes: {
        famous_player_name: "Earvin 'Magic' Johnson",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "New England Patriots, Tampa Bay Buccaneers"
      }
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
      famous_player_attributes: {
        famous_player_name: "Adrian Peterson",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "Minnesota Vikings, Arizona Cardinals, Washington Football Team, Detroit Lions"
      }
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
      famous_player_attributes: {
        famous_player_name: "Rob Gronkowski",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "DeAndre Hopkins",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Julian Edelman",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Larry Fitzgerald",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Anthony Munoz",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Quenton Nelson",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Jason Kelce",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Zack Martin",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Orlando Pace",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Reggie White",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Aaron Donald",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Vince Wilfork",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "J.J. Watt",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Von Miller",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Brian Urlacher",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Lawrence Taylor",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Richard Sherman",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Darrelle Revis",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Earl Thomas",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
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
      famous_player_attributes: {
        famous_player_name: "Troy Polamalu",
        individual_milestones: "fill here",
        team_trophies_won: "fill here",
        teams_countries: "LA Lakers, Team USA"
      }
    }
  }
}

Baseball = {
  name: "Baseball",
  overview_attributes: {
    short_description: "Score runs",
    game_objective: "The aim of baseball is to score more runs than your opponent in a 9-inning playing time frame. The match is split into two halves - the top and bottom of each inning. After the first 9 innings, the team with the most runs wins.",
    governing_body_url: "mlb.com"
  },
  equipment_need_attributes: {
    footwear: "Baseball cleats",
    required_equipment: "Baseball bat, glove, uniform",
    safety_gear: "Protective helmet, shin guards",
    infrastructure: "Baseball field with bases",
    clothing: "Team uniform, baseball cap"
  },
  history_attributes: {
    invented: "The modern concept of baseball was developed in the 19th century, with its roots traced back to various bat-and-ball games",
    creator: "Alexander Cartwright",
    country_of_origin: "United States",
    most_successful_teams: "New York Yankees, Boston Red Sox, Los Angeles Dodgers, San Francisco Giants, St. Louis Cardinals",
    milestones: "The first World Series was played in 1903, and Babe Ruth became the first player to hit 60 home runs in a season in 1927"
  },
  terminology_attributes: {
    most_important_terms: "Home run, strikeout, inning, pitcher, batter",
  },
  rule_attributes: {
    game_duration: "Nine innings",
    scoring: "Runs are scored by touching four bases in order",
    player_per_team: 9,
    referees: 4,
    most_important_rules: "A game consists of nine innings, and each inning consists of two halves (top and bottom). Ech team has nine players on the field at a time, including a pitcher, catcher, infielders, and outfilders, The team with the most runs at the end of nine innings wins. The pitcher throws the ball to the batter, who tries to hit it and reach base. The defensive team tries to prevent the offensive team from scoring runs. If a batter gets four balls (pitches out of the strike zone), they get to walk to first base. If a batter gets three strikes (swings and misses or hits a foul ball), they are out. If a batted is caught on the fly, the batter is also out. The game may go into extra innings if the score is tied after nine innings.",
    field_size: "Various",
    field_type: "grass, turf",
  },
  positions_attributes: {
    "0" => {
      positions_name: "Pitcher",
      positions_tag: "P",
      description_attributes: {
        overview_of_position: "Throws the ball to the batter",
        primary_objectives: "Striking out batters, preventing runs",
        strengths: "Pitching accuracy, variety of pitches",
        weaknesses: "Pitch count, vulnerability to hits"
      },
      famous_player_attributes: {
        famous_player_name: "Babe Ruth",
        individual_milestones: "Set the record for most home runs in a season (60) in 1927",
        team_trophies_won: "7-time World Series champion with the New York Yankees",
        teams_countries: "New York Yankees, Boston Red Sox"
      }
    },
    "1" => {
      positions_name: "Catcher",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Receives pitches from the pitcher",
        primary_objectives: "Catching pitches, throwing out baserunners",
        strengths: "Catching ability, arm strength",
        weaknesses: "Physical toll, squatting for extended periods"
      },
      famous_player_attributes: {
        famous_player_name: "Johnny Bench",
        individual_milestones: "10-time Gold Glove Award winner",
        team_trophies_won: "2-time World Series champion with the Cincinnati Reds",
        teams_countries: "Cincinnati Reds"
      }
    },
    "2" => {
      positions_name: "First Baseman",
      positions_tag: "1B",
      description_attributes: {
        overview_of_position: "Defends the area around first base",
        primary_objectives: "Fielding throws, catching, tagging runners",
        strengths: "Fielding skills, tall reach",
        weaknesses: "Limited mobility, defensive responsiblities"
      },
      famous_player_attributes: {
        famous_player_name: "Lou Gehrig",
        individual_milestones: "2-time MVP, 7-time All-Star",
        team_trophies_won: "6-time World Series champion with the New York Yankees",
        teams_countries: "New York Yankees"
      }
    },
    "3" => {
      positions_name: "Second Baseman",
      positions_tag: "2B",
      description_attributes: {
        overview_of_position: "Defends the area around second base",
        primary_objectives: "Double plays, fielding grounders",
        strengths: "Agility, quick reflexes",
        weaknesses: "Limited throwing distance, defensive responsibilties"
      },
      famous_player_attributes: {
        famous_player_name: "Joe Morgan",
        individual_milestones: "2-time MVP, 10-time All-Star",
        team_trophies_won: "2-time World Series champion with the Cincinnati Reds",
        teams_countries: "Cincinnati Reds"
      }
    },
    "4" => {
      positions_name: "Shortstop",
      positions_tag: "SS",
      description_attributes: {
        overview_of_position: "Defends the area between second and third base",
        primary_objectives: "Fielding grounders, covering second base",
        strengths: "Quickness, agility, strong arm",
        weaknesses: "Limited throwing distance, defensive responsibilties"
      },
      famous_player_attributes: {
        famous_player_name: "Derek Jeter",
        individual_milestones: "14-time All-Star, 5-time Gold Glove Award winner",
        team_trophies_won: "5-time World Series champion with the New York Yankees",
        teams_countries: "New York Yankees"
      }
    },
    "5" => {
      positions_name: "Third Baseman",
      positions_tag: "3B",
      description_attributes: {
        overview_of_position: "Defends the area around third base",
        primary_objectives: "Fielding line drives, throwing out runners",
        strengths: "Strong arm, reaction time",
        weaknesses: "Limited range, defensive responsibilties"
      },
      famous_player_attributes: {
        famous_player_name: "Mike Schmidt",
        individual_milestones: "3-time MVP, 10-time Gold Glove Award winner",
        team_trophies_won: "1-time World Series champion with the Philadelphia Phillies",
        teams_countries: "Philadelphia Phillies"
      }
    },
    "6" => {
      positions_name: "Left Fielder",
      positions_tag: "LF",
      description_attributes: {
        overview_of_position: "Outfielder positioned in the left field",
        primary_objectives: "Catching fly balls, throwing to bases",
        strengths: "Speed, outfield coverage",
        weaknesses: "Limited throwing accuracy, defensive responsibilties"
      },
      famous_player_attributes: {
        famous_player_name: "Barry Bonds",
        individual_milestones: "7-time MVP, all-time home run leader",
        team_trophies_won: "1-time World Series champion with the San Francisco Giants",
        teams_countries: "San Francisco Giants, Pittsburgh Pirates"
      }
    },
    "7" => {
      positions_name: "Center Fielder",
      positions_tag: "CF",
      description_attributes: {
        overview_of_position: "Outfielder positioned in center field",
        primary_objectives: "Catching fly balls, covering outfield",
        strengths: "Speed, tracking fly balls",
        weaknesses: "Limited throwing accuracy, defensive responsibilities"
      },
      famous_player_attributes: {
        famous_player_name: "Willie Mays",
        individual_milestones: "24-time All-Star, 12-time Gold Glove Award winner",
        team_trophies_won: "1-time World Series champion with the New York/San Francisco Giants",
        teams_countries: "New York/San Francisco Giants"
      }
    },
    "8" => {
      positions_name: "Right Fielder",
      positions_tag: "RF",
      description_attributes: {
        overview_of_position: "Outfielder positioned in right field",
        primary_objectives: "Catching fly balls, throwing to bases",
        strengths: "Strong throwing arm, outfield coverage",
        weaknesses: "Limited speed, defensive responsibilities"
      },
      famous_player_attributes: {
        famous_player_name: "Hank Aaron",
        individual_milestones: "All-time home run leader until 2007",
        team_trophies_won: "1-time World Series champion with the Milwaukee/Atlanta Braves",
        teams_countries: "Milwaukee/Atlanta Braves"
      }
    }
  }
}

Ice Hockey = {
  name: "Ice Hockey",
  overview_attributes: {
    short_description: "Score goals on ice",
    game_objective: "The aim of hockey is to score more goals than your opponent in a 60-minute playing time frame. The match is split into three periods of 20 minutes each. After the first and second periods, there is a 15-minute intermission. The team with the most goals at the end of the game wins.",
    governing_body_url: "iihf.com"
  },
  equipment_need_attributes: {
    footwear: "Ice hockey skates",
    required_equipment: "Hockey stick, puck, protective gear (helmet, pads, gloves)",
    safety_gear: "Face mask, mouthguard",
    infrastructure: "Hockey rink with goals",
    clothing: "Team jersey, shorts, socks"
  },
  history_attributes: {
    invented: "Modern ice hockey has its roots in various stick-and-ball games played in the 19th century. The first organized game took place in 1875",
    creator: "James Creighton",
    country_of_origin: "Canada",
    most_successful_teams: "Montreal Canadiens, Detroit Red Wings, Toronto Maple Leafs, Boston Bruins, Chicago Blackhawks",
    milestones: "The first NHL season was held in 1917, and Wayne Gretzky became the all-time leading scorer in 1989"
  },
  terminology_attributes: {
    most_important_terms: "Goal, assist, power play, penalty kill",
  },
  rule_attributes: {
    game_duration: "Three 20-minute periods",
    scoring: "The puck enters the goal",
    player_per_team: 6,
    referees: 4,
    most_important_rules: "A game consists of three 20-minute periods with intermission in between. Each team has six players on the ice, including one goaltender. The team with the most goals at the end of the game wins. The puck must fully cross the goal line to count as a goal. Players can be penalized for various infractions, leading to power plays or penalty kills. Icing and offside are important rules in determining play stoppages. Overtime and shootouts may be used to break ties in certain situations.",
    field_size: "200 by 85 feet",
    field_type: "ice rink",
  },
  positions_attributes: {
    "0" => {
      positions_name: "Goaltender",
      positions_tag: "G",
      description_attributes: {
        overview_of_position: "Last line of defense, prevents the opponent from scoring",
        primary_objectives: "Stopping shots, directing rebounds, controlling the crease",
        strengths: "Goaltending reflexes, positioning, puck handling",
        weaknesses: "Vulnerable to screen situations, lateral movement"
      },
      famous_player_attributes: {
        famous_player_name: "Patrick Roy",
        individual_milestones: "4-time Stanley Cup champion, 3-time Conn Smythe Trophy winner",
        team_trophies_won: "Montreal Canadiens, Colorado Avalanche",
        teams_countries: "Canada"
      }
    },
    "1" => {
      positions_name: "Defenseman",
      positions_tag: "D",
      description_attributes: {
        overview_of_position: "Defender, protects the goaltender and initiates offensive plays",
        primary_objectives: "Blocking shots, breaking up plays, moving the puck up the ice",
        strengths: "Defensive awareness, physical play, shot blocking",
        weaknesses: "Skating speed, offensive production"
      },
      famous_player_attributes: {
        famous_player_name: "Bobby Orr",
        individual_milestones: "8-time Norris Trophy winner, 2-time Stanley Cup Champion",
        team_trophies_won: "Boston Bruins",
        teams_countries: "Canada"
      }
    },
    "2" => {
      positions_name: "Center",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Plays in the middle of the forward line, involved in both ends of the ice",
        primary_objectives: "Faceoffs, playmaking, two-way play",
        strengths: "Faceoff skills, passing, defensive responsibilties",
        weaknesses: "Limited physicality, goal-scoring inconsistency"
      },
      famous_player_attributes: {
        famous_player_name: "Wayne Gretzky",
        individual_milestones: "All-time leading scorer, 4-time Stanley Cup champion",
        team_trophies_won: "Edmonton Oilers, Los Angeles Kings",
        teams_countries: "Canada"
      }
    },
    "3" => {
      positions_name: "Right Wing",
      positions_tag: "RW",
      description_attributes: {
        overview_of_position: "Forward positioned on the right side",
        primary_objectives: "Scoring goals, providing assists, forechecking",
        strengths: "Goal-scoring, shooting accuracy, physical play",
        weaknesses: "Defensive responsiblities, consistency"
      },
      famous_player_attributes: {
        famous_player_name: "Jaromir Jagr",
        individual_milestones: "2-time Stanley Cup champion, 5-time Art Ross Trophy winner",
        team_trophies_won: "Pittsburgh Penguins",
        teams_countries: "Czech Republic"
      }
    },
    "4" => {
      positions_name: "Left Wing",
      positions_tag: "LW",
      description_attributes: {
        overview_of_position: "Forward positioned on the left side",
        primary_objectives: "Scoring goals, providing assists, forechecking",
        strengths: "Goal-scoring, shooting accuracy, physical play",
        weaknesses: "Defensive responsibilties, consistency"
      },
      famous_player_attributes: {
        famous_player_name: "Luc Robitaille",
        individual_milestones: "1-time Stanley Cup champion, 1-time Calder Trophy winner",
        team_trophies_won: "Los Angeles Kings",
        teams_countries: "Canada"
      }
    }
  }
}

Volleyball = {
  name: "Volleyball",
  overview_attributes: {
    short_description: "Score points by sending the ball over the net",
    game_objective: "The aim of volleyball is to score more points than your opponent by successfully sending the ball over the net and into the opponent's court. A match is typically played best out of five sets, and each set is played of 25 points (with some variations).",
    governing_body_url: "fivb.com"
  },
  equipment_need_attributes: {
    footwear: "Volleyball shoes",
    required_equipment: "Volleyball, knee pads, team uniform",
    safety_gear: "Ankle braces",
    infrastructure: "Volleyball court with net",
    clothing: "Jersey, shorts, socks"
  },
  history_attributes: {
    invented: "Modern volleyball was invented in 1895 by William G. Morgan, combining elements of basketball, baseball, tennis, and handball",
    creator: "William G. Morgan",
    country_of_origin: "United States",
    most_successful_teams: "Brazil, United States, Russia, Italy, Cuba",
    milestones: "Volleyball was introduced to the Olympic Games in 1964"
  },
  terminology_attributes: {
    most_important_terms: "Serve, spike, block, dig",
  },
  rule_attributes: {
    game_duration: "Best out of five sets, played to 25 points (some variations)",
    scoring: "Points are scored by successfully sending the ball into the opponent's court",
    player_per_team: 6,
    referees: 2,
    most_important_rules: "A match is typically played best out of five sets. Each team can have a maximum of six players on the court at a time. Points are scored by successfully sending the ball into the opponent's court, and each rally begins with a serve. The team that wins a rally is awarded a point and the right to serve. Players must rotate positions after each point. Substitutions are allowed but follow specific rules. The team that first scores 25 point (with some variations) and is leading by at least two points wins a set. The first team to win three sets wins the match.",
    field_size: "18 meters by 9 meters",
    field_type: "Hardwood, synthetic, court tile",
  },
  positions_attributes: {
    "0" => {
      positions_name: "Setter",
      positions_tag: "S",
      description_attributes: {
        overview_of_position: "Quarterback of the team, sets up the attack",
        primary_objectives: "Setting the ball accurately, orchestrating the offense",
        strengths: "Setting technique, decision-making, teamwork",
        weaknesses: "Defensive responsibilities, blocking"
      },
      famous_player_attributes: {
        famous_player_name: "Karch Kiraly",
        individual_milestones: "3-time Olympic gold medalist, 3-time World Champion",
        team_trophies_won: "United States",
        teams_countries: "United States"
      }
    },
    "1" => {
      positions_name: "Outside Hitter",
      positions_tag: "OH",
      description_attributes: {
        overview_of_position: "Attacker positioned on the left side of the net",
        primary_objectives: "Spiking, blocking, digging",
        strengths: "Powerful spike, agility, all-around skills",
        weaknesses: "Defensive responsibilties, blocking consistency"
      },
      famous_player_attributes: {
        famous_player_name: "Giba",
        individual_milestones: "3-time Olympic gold medalist, 8-time World Champion",
        team_trophies_won: "Brazil",
        teams_countries: "Brazil"
      }
    },
    "2" => {
      positions_name: "Middle Blocker",
      positions_tag: "MB",
      description_attributes: {
        overview_of_position: "Defensive and offensive player at the net",
        primary_objectives: "Blocking, quick attacks, defending against spikes",
        strengths: "Blocking ability, quick footwork, net presence",
        weaknesses: "Lateral movement, offensive variablity"
      },
      famous_player_attributes: {
        famous_player_name: "Dmitriy Muserskiy",
        individual_milestones: "2-time Olympic gold medalist, 3-time World Champion",
        team_trophies_won: "Russia",
        teams_countries: "Russia"
      }
    },
    "3" => {
      positions_name: "Opposite Hitter",
      positions_tag: "Opp",
      description_attributes: {
        overview_of_position: "Attacker positioned on the right side of the net",
        primary_objectives: "Spiking, blocking, serving",
        strengths: "Versatile attacks, powerful serves, blocking",
        weaknesses: "Defensive responsibilties, blocking consistency"
      },
      famous_player_attributes: {
        famous_player_name: "Tsvetan Sokolov",
        individual_milestones: "Olympic silver medalist, World Championship silver medalist",
        team_trophies_won: "Bulgaria",
        teams_countries: "Bulgaria"
      }
    },
    "4" => {
      positions_name: "Libero",
      positions_tag: "L",
      description_attributes: {
        overview_of_position: "Defensive specialist, wears a different color jersey",
        primary_objectives: "Passing, digging, serve reception",
        strengths: "Defensive skills, agility, court awareness",
        weaknesses: "Limited attacking, height restrictions"
      },
      famous_player_attributes: {
        famous_player_name: "Sergio Santos",
        individual_milestones: "Olympic gold medalist, 3-time World Cup winner",
        team_trophies_won: "Brazil",
        teams_countries: "Brazil"
      }
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

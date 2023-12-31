require "open-uri"
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
puts "Cleaning done!"
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
    footwear: "Pair of Trainers",
    required_equipment: "A court and basketball",
    safety_gear: "Mouthguard and face masks are optional",
    infrastructure: "Court with a basket at either end",
    clothing: "Shorts and sleeveless top/t/shirt"
  },
  history_attributes: {
    invented: "Year: 1891",
    creator: "James Naismith",
    country_of_origin: "United States of America",
    most_successful_teams: "Los Angeles Lakers, Boston Celtics, Chicago Bulls",
    milestones: "1892 1.The first official game of basketball is played at the YMCA gym in Albany, New York. 1949 2.The BAA merges with the NBL to the create the NBA(National Basketball Association). 1992 3.The 'Dream Team' wins the Olympics in Barcelona"
  },
  terminology_attributes: {
    most_important_terms: "1.AIR BALL: An unblocked shot that fails to hit the the rim or backboard. 2.BLOCK: To tip or deflect a players shot. 3.REBOUND: To catch the ball after a missed field goal attempt. 4.ASSIST: A pass to a teammate who immediately scores a basket. 5.STEAL: To gain possession of the ball from the opposing team by intercepting a pass. 6.FREE THROW: An unopposed attempt to score a basket from the free throw line, usually after a foul was commited.",
  },
  rule_attributes: {
    game_duration: "4x 12 minutes period",
    scoring: "Any basket scored from outside the three point arc is worth three points. Baskets scored within the three point arc are worth two points. Free throws are worth one point each",
    player_per_team: 5,
    referees: 3,
    most_important_rules: "The ball can only be moved by either dribbling (bouncing the ball) or passing the ball. Each team has 24 seconds to at least take a shot at the basket, after that the ball is turned over to the opposing team. After each successful basket the ball is turned over to the opposing team. Fouls commited are accumulated, if a player reaches 6 fouls he is ejected from the game.",
    field_size: "Rectangular shaped measuring 91 feet long and 50 feet wide.",
    field_type: "Polished Wood",
  },
    positions_attributes: {
      "0" => {
        positions_name: "Point Guard",
        positions_tag: "PG",
        description_attributes: {
          overview_of_position: "Expected to run the teams offense by controlling the ball and making sure that it gets to the right player at the right time.",
          primary_objectives: "Facilitate scoring opportunities for their team or score themselves.",
          strengths: "Best ball handles, passer and decision maker on the team.",
          weaknesses: "Most often the smallest player on the floor."
        },
        famous_player_attributes: {
          famous_player_name: "Earvin 'Magic' Johnson",
          individual_milestones: "1st overall pick, 3x NBA Finals MVP, 3x NBA MVP",
          team_trophies_won: "5x NBA Champion, Olympic Gold Medal",
          teams_countries: "LA Lakers, Team USA",
          photo: { io: URI.open("https://cdn.nba.com/manage/2021/08/magic-johnson-iso-archive.jpg"), filename:"magic_johnson.jpg", content_type: "image/png" }
        }
      },
      "1" => {
        positions_name: "Shooting Guard",
        positions_tag: "SG",
        description_attributes: {
          overview_of_position: "Typically responsible for scoring points by taking shots, especially from long range.",
          primary_objectives: "Excel in scoring, often a team's primary perimeter shooter.",
          strengths: "Strong shooting skills, often quick and agile.",
          weaknesses: "May not be as involved in playmaking as a point guard."
        },
        # file = URI.open("https://csq.com/wp-content/uploads/2017/08/Michael-Jordan-Slam-Dunk-172.jpeg")
        famous_player_attributes: {
          famous_player_name: "Michael Jordan",
          individual_milestones: "6x NBA Finals MVP, 5x NBA MVP",
          team_trophies_won: "6x NBA Champion, 2x Olympic Gold Medal",
          teams_countries: "Chicago Bulls, Washington Wizards, Team USA",
          photo: { io: URI.open("https://csq.com/wp-content/uploads/2017/08/Michael-Jordan-Slam-Dunk-172.jpeg"), filename:"michael_jordan.png", content_type: "image/png" }
        }
        # famous_player.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
        # famous_player.save
      },
      "2" => {
        positions_name: "Small Forward",
        positions_tag: "SF",
        description_attributes: {
          overview_of_position: "Versatile player who can contribute both offensively and defensively.",
          primary_objectives: "Score points, rebound, and assist teammates. Often considered a team's most well-rounded player.",
          strengths: "Balanced skills in scoring, rebounding, and defense.",
          weaknesses: "May not specialize in a specific aspect of the game."
        },
        famous_player_attributes: {
          famous_player_name: "Lebron James",
          individual_milestones: "4x NBA Finals MVP, 4x NBA MVP",
          team_trophies_won: "4x NBA Champion, 2x Olympic Gold Medal",
          teams_countries: "LA Lakers, Miami Heat, Cleveland Cavaliers, Team USA",
          photo: { io: URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/LeBron_James_%2851959977144%29_%28cropped2%29.jpg/640px-LeBron_James_%2851959977144%29_%28cropped2%29.jpg"), filename:"lebron_james.png", content_type: "image/png" }
        }
      },
      "3" => {
        positions_name: "Power Forward",
        positions_tag: "PF",
        description_attributes: {
          overview_of_position: "Typically a strong and physical player who plays close to the basket.",
          primary_objectives: "Score points in the post, rebound, and provide interior defense.",
          strengths: "Strong, rebounder, and capable of scoring in and around the paint.",
          weaknesses: "May not have the agility or perimeter skills of smaller players."
        },
        famous_player_attributes: {
          famous_player_name: "Tim Duncan",
          individual_milestones: "3x NBA Finals MVP, 2x NBA MVP",
          team_trophies_won: "5x NBA Champion",
          teams_countries: "San Antonio Spurs, Team USA",
          photo: { io: URI.open("https://www.usatoday.com/gcdn/-mm-/cccaacda38df0eea5050262c546beafa9d46a733/c=0-152-3031-1864/local/-/media/2016/07/11/USATODAY/USATODAY/636038294784773256-c02-refer-0512.jpg?width=3031&height=1712&fit=crop&format=pjpg&auto=webp"), filename:"tim_duncan.jpg", content_type: "image/png" }
        }
      },
      "4" => {
        positions_name: "Center",
        positions_tag: "C",
        description_attributes: {
          overview_of_position: "Typically the tallest player on the team. Responsible for scoring near the basket and protecting the rim.",
          primary_objectives: "Score points in the post, block shots, and grab rebounds.",
          strengths: "Tall and physically imposing, strong in the paint.",
          weaknesses: "May lack the agility and perimeter skills of smaller players."
        },
        famous_player_attributes: {
          famous_player_name: "Shaquille O'Neal",
          individual_milestones: "3x NBA Finals MVP, NBA MVP",
          team_trophies_won: "4x NBA Champion, Olympic gold medal",
          teams_countries: "Boston Celtics, Cleveland Cavaliers, Phoenix Suns, Miami Heat, LA Lakers, Orlando Magic, Team USA",
          photo: { io: URI.open("https://fanatics.frgimages.com/los-angeles-lakers/shaquille-oneal-los-angeles-lakers-unsigned-hardwood-classics-one-handed-dunk-photograph_pi4286000_ff_4286841-12eb589e1ee2e250de46_full.jpg?_hv=2&w=900"), filename:"shaquille_oneal.jpg", content_type: "image/png" }
        }
      }
    }
}

RUGBY_UNION = {
  name: "Rugby Union",
  overview_attributes: {
    short_description: "Rugby is a game played at all ages and abilities where 2 teams face off and try to score more points than each other. There are 8 forwards and 7 backs on each team as standard. The team that has possession can only pass the ball backwards or can kick tactically to move around the field.",
    game_objective: "To score more points through tries, conversions, penalties and drop goals than the other team.",
    governing_body_url: "https://www.world.rugby/"
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
    scoring: "When a player crosses the try line and touches the ball down they get 5 points for a try, from this a member of the team attempts to kick a conversion worth 2 points if it goes between the posts. If foul play occurs, the team awarded a penalty may try and kick the ball from a tee between the posts which is worth 3 points. In open play a player may do a drop goal where the ball bounces before being kicked through the posts, also worth 3 points",
    player_per_team: 15,
    referees: 3,
    most_important_rules: "FORWARD PASS: The ball must be passed backward or sideways from the hands. Passing the ball forward is considered illegal and results in a scrum for the opposition.

    OFFSIDE RULE: Players must be behind the hindmost foot of their teammates during open play. Being in front of the hindmost foot is considered offside and can result in penalties.

    SCRUM: Occurs after minor infractions or knock-ons (where the ball is accidentally knocked forward). Forwards from each team bind together and contest for possession of the ball by pushing against each other.

    LINEOUT: When the ball goes out of play, a lineout is awarded to restart play. Players from both teams compete to catch the ball when it's thrown back into play from the sideline.

    RUCK: Forms when a player is tackled and brought to the ground but doesn't release the ball. Players from both teams bind together and attempt to win possession of the ball using their feet.

    MAUL: Similar to a ruck, but players bind together while on their feet after a tackle, with the ball held off the ground. Players can push and drive forward to gain ground while retaining possession of the ball.

    TACKLING RULES: Tackles must be made below the line of the shoulders and without lifting opponents dangerously. High tackles or dangerous tackles can result in penalties or cards.

    ADVANTAGE RULE: Referees can allow play to continue after an infringement if the non-offending team gains an advantage. If no advantage is gained, play is brought back, and a penalty may be awarded.

    FAIR PLAY AND DISCIPLINE: Respect for the referee's decisions, sportsmanship, and discipline are crucial aspects of the game. Foul play, such as deliberate foul play, can result in penalties, yellow cards, or red cards.",
    field_size: "100m long, 70m wide",
    field_type: "Primarily grass, but can also be played on artificial grass"
  },
  positions_attributes: {
    "0" => {
      positions_name: "Loosehead Prop",
      positions_tag: "LH",
      description_attributes: {
        overview_of_position: "Front-row forward, provides stability in scrums on the left/outside of scrum.",
        primary_objectives: "Scrummaging, supporting in open play, tackling, lifting in the lineout, carrying.",
        strengths: "Scrummaging technique, physicality, work rate",
        weaknesses: "Mobility, ball-handling"
      },
      famous_player_attributes: {
        famous_player_name: "Tendai Mtawarira",
        individual_milestones: "117 South Africa Appearances",
        team_trophies_won: "2019 World Cup",
        teams_countries: "South Africa, Sharks, Old Glory DC",
        photo: { io: URI.open("https://www.telegraph.co.uk/content/dam/rugby-union/2018/06/15/TELEMMGLPICT000166456965_trans_NvBQzQNjv4BqMjPWPHf5q-JhUxIktoXFkj5f2T7WLORUbRU7GLk1HF4.jpeg"), filename:"tendai_mtawarira.jpeg", content_type: "image/png" }
      }
    },
    "1" => {
      positions_name: "Hooker",
      positions_tag: "H",
      description_attributes: {
        overview_of_position: "Front-row forward, throws the ball into lineouts",
        primary_objectives: "Lineout throwing, scrummaging, tackling",
        strengths: "Lineout accuracy, physicality, set-piece play",
        weaknesses: "Open-play mobility, ball-carrying"
      },
      famous_player_attributes: {
        famous_player_name: "Sean Fitzpatrick",
        individual_milestones: "92 New Zealand Appearances, New Zealand Captain 1992-1997",
        team_trophies_won: "1987 World Cup, 2x Tri Nations, 9 Bledisloe Cups & a British & Irish Lions series Victory 1993",
        teams_countries: "New Zealand, Auckland Blues, Auckland",
        photo: { io: URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT0ILopt5WWX-LHoTtZ9wnlRkbbUXBuuOL8mw&usqp=CAU"), filename:"sean_fitzpatrick.img", content_type: "image/png" }
      }
    },
    "2" => {
      positions_name: "Tighthead Prop",
      positions_tag: "TH",
      description_attributes: {
        overview_of_position: "Front-row forward, provides stability in scrums",
        primary_objectives: "Scrummaging, supporting in open play, tackling",
        strengths: "Scrummaging technique, physicality, work rate",
        weaknesses: "Mobility, ball-handling"
      },
      famous_player_attributes: {
        famous_player_name: "Adam Jones",
        individual_milestones: "95 Wales Appearances, 5 British & Irish Lions Appearances",
        team_trophies_won: "3x 6 Nations Titles, British & Irish Lions Series 2013",
        teams_countries: "British & Irish Lions, Wales, Ospreys, Cardiff Blues, Harlequins",
        photo: { io: URI.open("https://e2.365dm.com/16/10/1600x900/skysports-rugby-adam-jones-harlequins_3805432.jpg"), filename:"adam_jones.jpg", content_type: "image/png" }
      }
    },
    "3" => {
      positions_name: "Loosehead Lock (Second Row)",
      positions_tag: "SR",
      description_attributes: {
        overview_of_position: "Second-row forward, key figure in lineouts and scrums",
        primary_objectives: "Lineout jumping, scrummaging, ball-carrying",
        strengths: "Lineout work, physicality, set-piece play",
        weaknesses: "Mobility, open-play speed"
      },
      famous_player_attributes: {
        famous_player_name: "Martin Johnson",
        individual_milestones: "84 England, 8 British & Irish Lions & 362 Leicester Tigers Appearances",
        team_trophies_won: "2003 World Cup, 1995 5 Nations Grand Slam (Undefeated), Captain of the victorious British & Irish Lions 1997 series, 4 English Premiership Titles & 2 European Cups",
        teams_countries: "British & Irish Lions, England, Leicester Tigers",
        photo: { io: URI.open("https://www.englandrugby.com//dxdam/65/65b2931b-c93c-44da-a557-f42aace5066e/GettyImages-1069518.jpg"), filename:"martin_johnson.jpg", content_type: "image/png" }
      }
    },
    "4" => {
      positions_name: "Tighthead lock (Second Row)",
      positions_tag: "SR",
      description_attributes: {
        overview_of_position: "Second-row forward, key figure in lineouts and scrums",
        primary_objectives: "Lineout jumping, scrummaging, ball-carrying",
        strengths: "Lineout work, physicality, set-piece play",
        weaknesses: "Mobility, open-play speed"
      },
      famous_player_attributes: {
        famous_player_name: "Eben Etzebeth",
        individual_milestones: "119 South Africa Appearances",
        team_trophies_won: "2019 & 2023 World Cup, 2019 Rugby Championship, 2012 Currie Cup,",
        teams_countries: "South Africa, Sharks, Toulon, Stormers, Western Province",
        photo: { io: URI.open("https://www.reuters.com/resizer/MWLNSv9hCwfZO2NhgVZCaSs4igc=/1920x2400/smart/filters:quality(80)/cloudfront-us-east-2.images.arcpublishing.com/reuters/3HG4ZLNVOZOQTBGHKG6X75IGGE.jpg"), filename:"eben_etzebeth.jpg", content_type: "image/png" }
      }
    },
    "5" => {
      positions_name: "Blindside Flanker",
      positions_tag: "BF",
      description_attributes: {
        overview_of_position: "Back-row forward, specializes in winning possession and disrupting the opposition",
        primary_objectives: "Tackling, competing for the ball, supporting in open play",
        strengths: "Tackling, breakdown work, agility",
        weaknesses: "Ball-carrying, lineout challenges"
      },
      famous_player_attributes: {
        famous_player_name: "Siya Kolisi",
        individual_milestones: "Captain of back to back world cup winning South African squad, first black captain of South Africa rugby & 83 South Africa appearances",
        team_trophies_won: "2019 & 2023 World Cup, 2019 Rugby Championship & 2021 British & Irish Lions Series",
        teams_countries: "South Africa, Western Province, Stormers, Sharks, Racing 92",
        photo: { io: URI.open("https://s3.amazonaws.com/sportgomag.com/live/wp-content/uploads/2019/07/19201004/Siya.jpg"), filename:"siya_koliski.jpg", content_type: "image/png" }
      }
    },
    "6" => {
      positions_name: "Openside Flanker",
      positions_tag: "OF",
      description_attributes: {
        overview_of_position: "Back-row forward, specializes in winning turnovers at rucks and disrupting the opposition",
        primary_objectives: "Tackling, competing for the ball, supporting in open play",
        strengths: "Tackling, breakdown work, agility",
        weaknesses: "Ball-carrying, lineout challenges"
      },
      famous_player_attributes: {
        famous_player_name: "Richie Mccaw",
        individual_milestones: "148 New Zealand Appearances - 110 as captain",
        team_trophies_won: "2011 & 2015 World Cup, 10 Tri Nations/RUgby CHampionship titles, 4 Super Rugby Titles 11 Bledisloe Cups & a British & Irish Lions Series",
        teams_countries: "New Zealand, Crusaders, Canterbury",
        photo: { io: URI.open("https://a.espncdn.com/i/rugby/scrum/120667.jpg"), filename:"richie_mccaw.jpg", content_type: "image/png" }
      }
    },
    "7" => {
      positions_name: "Number 8",
      positions_tag: "N8",
      description_attributes: {
        overview_of_position: "Back-row forward, often the primary ball carrier",
        primary_objectives: "Running with the ball, supporting in the open play, breakdown work",
        strengths: "Ball-carrying, lineout work, leadership",
        weaknesses: "Defensive responsiblities, breakdown challenges"
      },
      famous_player_attributes: {
        famous_player_name: "Sergio Parisse",
        individual_milestones: "142 Italy Appearances",
        team_trophies_won: "2x French Top 14 Champions & 2x European Challenge Cups",
        teams_countries: "Italy, Stade Francais, ",
        photo: { io: URI.open("https://www.reddit.com/media?url=https%3A%2F%2Fi.redd.it%2Fgywkhck5ptya1.jpg"), filename: "sergio_parisse.jpg", content_type: "image/png" }
      }
    },
    "8" => {
      positions_name: "Scrum Half",
      positions_tag: "SH",
      description_attributes: {
        overview_of_position: "Link between forwards and backs, delivers the ball from scrums and rucks",
        primary_objectives: "Quick distribution, organizing forwards, defensive work",
        strengths: "Passing accuracy, speed, game management",
        weaknesses: "Physical challenges, tackling largers opponents"
      },
      famous_player_attributes: {
        famous_player_name: "Antoine Dupont",
        individual_milestones: "52 French Appearances, 2021 World Rugby Player of the Year, 3x Six Nations Player of the Tournament, 1x European Player of the Year",
        team_trophies_won: "1x European Rugby Champions Cup, 3x Top 14 titles, 1x Six Nations Championship",
        teams_countries: "France, Toulouse",
        photo: { io: URI.open("https://static.independent.co.uk/2023/09/22/14/0575687694f1b82486153fa497637925Y29udGVudHNlYXJjaGFwaSwxNjk1NDc0MjE0-2.73654539.jpg"), filename:"antoine_dupont.jpg", content_type: "image/png" }
      }
    },
    "9" => {
      positions_name: "Stand Off",
      positions_tag: "SO",
      description_attributes: {
        overview_of_position: "Key playmaker, responsible for directing the team's attack",
        primary_objectives: "Kicking for territory, orchestrating backline moves, decision-making",
        strengths: "Kicking accuracy, tactical awareness, playmaking",
        weaknesses: "Physical tackling, pressure situations"
      },
      famous_player_attributes: {
        famous_player_name: "Dan Carter",
        individual_milestones: "112 New Zealand Appearances, 2005/2012/2015 World Rugby Player of the Year, All time International Rugby Leading Points Scorer",
        team_trophies_won: "2011 & 2015 World Cup, 9 Tri Nations/Rugby Championship Titles, 13 Bledisloe Cups British & Irish Lions Series, 3x Super Rugby Titles, 1x Top 14 Title, 1x Top League Title",
        teams_countries: "New Zealand, Crusaders, Racing 92, Perpignan, Kolbeco Steelers, Canterbury",
        photo: { io: URI.open("https://phantom-marca.unidadeditorial.es/07634ea09692830c0b85f3062368b77a/resize/828/f/jpg/assets/multimedia/imagenes/2021/02/20/16138166403279.jpg"), filename:"dan_carter.jpg", content_type: "image/png" }
      }
    },
    "10" => {
      positions_name: "L Winger",
      positions_tag: "LW",
      description_attributes: {
        overview_of_position: "Speedy winger positioned on the left flank",
        primary_objectives: "Finishing tries, supporting attacks, defending against opposition wingers",
        strengths: "Pace, try-scoring ability, agility",
        weaknesses: "Physical marking, defensive responsibilities"
      },
      famous_player_attributes: {
        famous_player_name: "Jonah Lomu",
        individual_milestones: "73 New Zealand Appearances, 1995 World Cup player of the tournament. Often attributed as the first true superstar of rugby.",
        team_trophies_won: "1998 Commonwealth Games Gold, New Zealand 7's",
        teams_countries: "New Zealand, Blues, Chiefs, Hurricanes, Cardiff Blues",
        photo: { io: URI.open("https://www.nzhalloffame.co.nz/NZSHOF/files/9a/9ac5a35f-0810-4c91-98df-79014baf1100.jpg"), filename:"jonah_lomu.jpg", content_type: "image/png" }
      }
    },
    "11" => {
      positions_name: "Inside Centre",
      positions_tag: "IC",
      description_attributes: {
        overview_of_position: "Midfielder in the backline, often part of attacking plays",
        primary_objectives: "Creating attacking opportunities, defending against opposition centers",
        strengths: "Running lines, passing, defensive skills",
        weaknesses: "Physical collisions, tackling in open play"

      },
      famous_player_attributes: {
        famous_player_name: "Ma'a Nonu",
        individual_milestones: "103 New Zealand Appearances",
        team_trophies_won: "2011 & 2015 World Cups, 5 Tri Nations/Rugby Championships, 8 Bledisloe Cups, 1x Super Rugby Title, 1x Top 14 Title",
        teams_countries: "New Zealand, Hurricanes, Blues, Highlanders, Toulon, San Diego Legion, Ricoh Black Rams ",
        photo: { io: URI.open("https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg)/origin-imgresizer.eurosport.com/2011/02/21/692626-21511189-2560-1440.jpg"), filename:"maa_nonu.jpg", content_type: "image/png" }
      }
    },
    "12" => {
      positions_name: "Outside Centre",
      positions_tag: "OC",
      description_attributes: {
        overview_of_position: "Midfielder in the backline, often part of attacking plays",
        primary_objectives: "Creating attacking opportunities, defending against opposition centers",
        strengths: "Running lines, passing, defensive skills",
        weaknesses: "Physical collisions, tackling in open play"
      },
      famous_player_attributes: {
        famous_player_name: "Brian O'Driscoll",
        individual_milestones: "133 Ireland Appearances, 8 British & Irish Lions Appearances, British & Irish Lions Captain 2005 & Six Nations all Time Top Try Scorer",
        team_trophies_won: "2013 British & Irish Lions Series, 2x Six Nations Titles (1 Grand Slam), 3x European Cups, 1x European Challenge Cups & 4x League Titles",
        teams_countries: "Ireland, Leinster",
        photo: { io: URI.open("https://www.laureus.com/getmedia/bc7b3dcc-fd6a-4f8a-9891-ce555bb1e12d/o-driscoll2.jpg?width=646&height=646&ext=.jpg?.CleanImageUrl()"), filename:"brian_odriscoll.jpg", content_type: "image/png" }
      }
    },
    "13" => {
      positions_name: "R Winger",
      positions_tag: "RW",
      description_attributes: {
        overview_of_position: "Speedy winger positioned on the right flank",
        primary_objectives: "Finishing tries, supporting attacks, defending against opposition wingers",
        strengths: "Pace, try-scoring ability, agility",
        weaknesses: "Physical marking, defensive responsibilities"
      },
      famous_player_attributes: {
        famous_player_name: "Bryan Habana",
        individual_milestones: "124 South Africa Appearances, 67 International Tries & 3x South Africa Rugby Union Player of the Year",
        team_trophies_won: "2007 World Cup, British & Irish Lions Series, 2x Currie Cup, 2x Super Rugby Title, 1x Tri-Nations Title, 2x European Champions Cup, 1x Top 14 Title",
        teams_countries: "South Africa, Toulon, Bulls, Stormers ",
        photo: { io: URI.open("https://keyassets.timeincuk.net/inspirewp/live/wp-content/uploads/sites/7/2016/08/HABANA.jpg"), filename:"bryan_habana.jpg", content_type: "image/png" }
      }
    },
    "14" => {
      positions_name: "Fullback",
      positions_tag: "FB",
      description_attributes: {
        overview_of_position: "Last line of defense, positioned behind the main defensive line" ,
        primary_objectives: "Fielding kicks, counter-attacking, supporting the backline",
        strengths: "High ball catching, kicking, positional play",
        weaknesses: "Physical duels, tackling in open play"
      },
      famous_player_attributes: {
        famous_player_name: "Stuart Hogg",
        individual_milestones: "100 Scotland Appearances, 2 British & Irish Lions Appearances, Six Nations Player of the Championship 2016 & 2017, Scotland Captain, Scotland's record try scorer",
        team_trophies_won: "1x European Champions Cup, 1 x English Premiership, 1x Pro12 Championship",
        teams_countries: "Scotland, Glasgow Warriors, Exeter Chiefs",
        photo: { io: URI.open("https://e0.365dm.com/23/07/768x432/skysports-stuart-hogg-scotland_6213259.jpg?20230709131019"), filename:"stuart_hogg.jpg", content_type: "image/png" }
      }
    }
  }
}
FOOTBALL = {
  name: "Football",
  overview_attributes: {
    short_description: "Score goals.",
    game_objective: "The aim of football is to score more goals then your opponent. The match is split up into 2 halves of 45 minutes, with the potential for extra time in certain competitions.",
    governing_body_url: "https://www.fifa.com/fifaplus/en"
  },
  equipment_need_attributes: {
    footwear: "Studded football boots.",
    required_equipment: "Matching strips.",
    safety_gear: "Shin pads for all players. Padded gloves for goalkeepers.",
    infrastructure: "A football pitch.",
    clothing: "Matching shirts, shorts and socks."
  },
  history_attributes: {
    invented: "There aree a lot of depictions to multiple football-like sports played by anciet civilizations but the starting concept of modern football was invented in 1862.",
    creator: "J. C. Thring.",
    country_of_origin: "England.",
    most_successful_teams: "Colo-Colo, Boca Juniors, Club Olimpia, FCSB, RSC Anderlecht, Liverpool, Galatasaray, Juventus, Ajax, Manchester United, Bayern Munich, Olympiacos FC, SL Benfica, Barcelona, Real Madrid, Celtic, Club Atlético Peñarol, Nacional de Football, Rangers FC",
    milestones: "First International match took place between England and Scotland in 1872, at West of Scotland Cricket Club in Partick, Glasgow."
  },
  terminology_attributes: {
    most_important_terms: "1.GOAL: When a ball crosses the line into the goals legally., 2.OFFSIDE: When an attacking player is further up the field than the last defending player of the other team without the ball., 3.FOUL: When a player commits an illegal act, the opposition will then get a free-kick., 4.PENALTY: When a foul is committed inside the box, the attacking team is rewarded with a free shot at goal from the penalty spot.",
  },
  rule_attributes: {
    game_duration: "Two 45 minutes halves plus compensation.",
    scoring: "1 point when the ball enters the goal.",
    player_per_team: 11,
    referees: 4,
    most_important_rules: "Each team can have 11 players, including 1 goalkeeper who is the only player allowed to handle the ball within the box. A minimum of 7 players are needed to constitute a match. The pitch must be marked with a rectangular shape around the outside showing out of bounds, two 5,5 meter boxes, two 16,5 meter boxes and a centre circle. A spot for a penalty placed 11 meters out of both goals and centre circle must also be visible. Each game must include one referee and two assistant referee's (linesmen). It's the job of the referee to act as time keeper and make any decisions which may need to be made such as fouls, free kicks, throw ins, penalties and added on time at the end of each half. The referee may consult the assistant referees at any time in the match regarding a decision. It's the assistant referee's job to spot offside's in the match, throw ins for either team and also assist the referee in all decision making processes where appropriate. If the game needs to head to extra time as a result of both teams being level in a match then 30 minutes will be added in the form of two 15 minute halves after the allotted 90 minutes. If teams are still level after extra time then a penalty shootout must take place. The whole ball must cross the goal line for it to constitute as a goal. For fouls committed a player could receive either a yellow or red card depending on the severity of the foul; this comes down to the referee's discretion. The yellow is a warning and a red card is a dismissal of that player. Two yellow cards will equal one red. Once a player is sent off then they cannot be replaced. If a ball goes out of play off an opponent in either of the side lines then it is given as a throw in. If it goes out of play off an attacking player on the base line then it is a goal kick. If it comes off a defending player it is a corner kick.",
    field_size: "A pitch can be a minimum of 45 meters in width and 90 meters in length, and a maximum of 90 meters width and 120 meters length.",
    field_type: "Natural or artificial grass."
  },
  positions_attributes: {
    "0" => {
      positions_name: "Goalkeeper",
      positions_tag: "GK",
      description_attributes: {
        overview_of_position: "Last line of defense, prevents the opponent from scoring.",
        primary_objectives: "Stopping shots, organizing the defense, distributing the ball.",
        strengths: "Shot-stopping, command of the penalty area, distribution.",
        weaknesses: "Vulnerable to one-on-one situations, handling crosses."
      },
      famous_player_attributes: {
        famous_player_name: "Lev Yashin",
        individual_milestones: "1x Ballon d'Or 1963, 9x European GoalKeeper of the Year",
        team_trophies_won: "1960 European Championship, Olympic Gold Medal, 5x Soviet Top League, 3x Soviet Cup",
        teams_countries: "Dynamo, Moscow, Soviet Union",
        photo: { io: URI.open("https://64.media.tumblr.com/af8b73d9efffc55cb5ef85cb2662cd95/tumblr_mh2fvjfl1y1rmxfeao1_1280.jpg"), filename:"lev_yashin.jpg", content_type: "image/png" }
      }
    },
    "1" => {
      positions_name: "Right-back",
      positions_tag: "RB",
      description_attributes: {
        overview_of_position: "Defender on the right side of the backline.",
        primary_objectives: "Defending against wingers, supporting attacks, crossing.",
        strengths: "Tackling, positional awareness, crossing.",
        weaknesses: "Facing skillsful wingers, defensive responsiblities"
      },
      famous_player_attributes: {
        famous_player_name: "Cafu",
        individual_milestones: "4x South American Team of the Year, Ballon d'Or Dream Team 2020",
        team_trophies_won: "2x FIFA World Cup, 2x Serie A Titles, 1x Champions League, multiple more",
        teams_countries: "St. Paul, Real Zaragoza, Palmeiras, Rome, AC Milan, Brazil",
        photo: { io: URI.open("https://assets.goal.com/v3/assets/bltcc7a7ffd2fbf71f5/bltd590ca0cafa50652/63fdcdff24864445770c53a5/cafu.jpg?auto=webp&format=pjpg&width=3840&quality=60"), filename:"cafu.jpg", content_type: "image/png" }
      }
    },
    "2" => {
      positions_name: "Left Center-back",
      positions_tag: "CB",
      description_attributes: {
        overview_of_position: "Central defender, anchors the defense.",
        primary_objectives: "Marking forwards, intercepting passes, aerial duels.",
        strengths: "Aerial ability, tackling, leadership.",
        weaknesses: "Pace, one-on-one situations."
      },
      famous_player_attributes: {
        famous_player_name: "Franz Beckenbauer",
        individual_milestones: "World Cup Winner as player and coach, 2 x Ballon d'or, 4x German Footballer of the Year",
        team_trophies_won: "5x Bundesliga Titles, 1x FIFA World Cup, 3x European Cups.",
        teams_countries: "Bayern Munich, NY Cosmos, Hamburg, West Germany",
        photo: { io: URI.open("https://upload.wikimedia.org/wikipedia/commons/5/56/Franz_Beckenbauer_%281975%29.jpg"), filename:"franz_beckenbauer.jpg", content_type: "image/png" }
      }
    },
    "3" => {
      positions_name: "Left-back",
      positions_tag: "LB",
      description_attributes: {
        overview_of_position: "Defender on the left side of the backline.",
        primary_objectives: "Defending against wingers, supporting attacks, crossing.",
        strengths: "Tackling, positional awareness, crossing.",
        weaknesses: "Facing skillsful wingers, defensive responsiblities"
      },
      famous_player_attributes: {
        famous_player_name: "Paolo Maldini",
        individual_milestones: "Most appearances for AC Milan",
        team_trophies_won: "5x European Cup/Champions League, 7x Serie A Title, 4x European Super Cup, 1x FIFA Club Word Cup",
        teams_countries: "AC Milan, Italy",
        photo: { io: URI.open("https://tmssl.akamaized.net/images/foto/galerie/paolo-maldini-1478613561-6474.jpg?lm=1483606201"), filename:"paolo_maldini.jpg", content_type: "image/png" }
      }
    },
    "4" => {
      positions_name: "Defensive Midfielder",
      positions_tag: "CDM",
      description_attributes: {
        overview_of_position: "Midfielder with a focus on defensive duties.",
        primary_objectives: "Breaking up opposition attacks, shielding the defense.",
        strengths: "Tackling, ball-winning, passing.",
        weaknesses: "Limited goal-scoring, attacking contribution."
      },
      famous_player_attributes: {
        famous_player_name: "Frank Rijkaard",
        individual_milestones: "2x Dutch Golden Shoe, 1988 European Championship Team of the Tournament",
        team_trophies_won: "3x European Cup/Champions League, 1x European Championship, 2x Serie A Titles, 5x Eredivisie Titles",
        teams_countries: "Ajax, Real Zaragoza, AC Milan, Netherlands",
        photo: { io: URI.open("https://i.dailymail.co.uk/1s/2019/01/10/17/6708812-6433405-Rijkaard_in_action_for_Holland-a-15_1547140819631.jpg"), filename:"frank_rijkaard.jpg", content_type: "image/png" }
      }
    },
    "5" => {
      positions_name: "Central Midfielder",
      positions_tag: "CM",
      description_attributes: {
        overview_of_position: "Midfielder inovlved in both defensive and attacking play.",
        primary_objectives: "Distrubiting the ball, controlling the tempo, joining attacks.",
        strengths: "Passing, vision, work rate.",
        weaknesses: "Limited goal-scoring, defensive responsibilities."
      },
      famous_player_attributes: {
        famous_player_name: "Alfredo Di Stefano",
        individual_milestones: "2x Ballon d'Or",
        team_trophies_won: "1x South American Championship, 8x La Liga Titles, 5x Champions League",
        teams_countries: "River Plate, Millonaris, Real Madrid, Espanyol, Argentina, Spain",
        photo: { io: URI.open("https://i.pinimg.com/1200x/3f/b6/86/3fb6863b48789f4c7623cf23304d7000.jpg"), filename:"alfredo_distefano.jpg", content_type: "image/png" }
      }
    },
    "6" => {
      positions_name: "Attacking Midfielder",
      positions_tag: "CAM",
      description_attributes: {
        overview_of_position: "Midfielder focused on creating scoring opportunities.",
        primary_objectives: "Playmaking, scoring goals, providing assists.",
        strengths: "Dribbling, creativity, goal-scoring.",
        weaknesses: "Defensive responsiblities, physical duels."
      },
      famous_player_attributes: {
        famous_player_name: "Diego Maradona",
        individual_milestones: "FIFA Player of the Century 2000, 1x FIFA World Cup Golden Ball",
        team_trophies_won: "1x FIFA World Cup, 2x Serie A Titles, 1x Coppa Italia",
        teams_countries: "Argentinos Juniors, Boca Juniors, Barcelona, Naples, Seville, Newell's Old Boys, Argentina",
        photo: { io: URI.open("https://ew.com/thmb/jHyIrAxwlJVRDDwVqji_gnruRp4=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-1016702318-bbc229bb439047958484b42fc7e20809.jpg"), filename:"diego_maradona.jpg", content_type: "image/png" }
      }
    },
    "7" => {
      positions_name: "Right Winger",
      positions_tag: "RW",
      description_attributes: {
        overview_of_position: "Forward positioned on the right flank.",
        primary_objectives: "Scoring goals, providing assists, dribbling past defenders.",
        strengths: "Pace, dribbling, cutting inside.",
        weaknesses: "Defensive responsiblities, physical marking."
      },
      famous_player_attributes: {
        famous_player_name: "Lionel Messi",
        individual_milestones: "8x Ballon d'Or, 6x European Golden Shoe, FIFA World Player of the Year 2009",
        team_trophies_won: "1x FIFA World Cup, 10x La Liga Titles, 4x Champions League, 3x FIFA Clup World Cup, 2x Ligue 1 Titles",
        teams_countries: "Barcelona, PSG, Inter Miami, Argentina",
        photo: { io: URI.open("https://cdn.britannica.com/35/238335-050-2CB2EB8A/Lionel-Messi-Argentina-Netherlands-World-Cup-Qatar-2022.jpg"), filename:"lionel_messi.jpg", content_type: "image/png" }
      }
    },
    "8" => {
      positions_name: "Striker",
      positions_tag: "ST",
      description_attributes: {
        overview_of_position: "Primary goal-scorer, positioned centrally.",
        primary_objectives: "Scoring goals, creating space, linking up play.",
        strengths: "Finishing, positioning, physicality.",
        weaknesses: "Defensive responsibilities, marking by defenders."
      },
      famous_player_attributes: {
        famous_player_name: "Pele",
        individual_milestones: "7x Ballon d'Or, Ballon d'Or Dream Team 2020, 11x Campeonato Paulista Top Scorer",
        team_trophies_won: "3x FIFA World Cups, 6x Campenonato Brasileiro Serie A Titles, 2x Intercontinental Cups",
        teams_countries: "Santos, NY Cosmos, Brazil",
        photo: { io: URI.open("https://hollywoodlife.com/wp-content/uploads/2022/12/Pele-Soccer-5-Things-SS-embed-2.jpg"), filename:"pele.jpg", content_type: "image/png" }
      }
    },
    "9" => {
      positions_name: "Left Winger",
      positions_tag: "LW",
      description_attributes: {
        overview_of_position: "Forward positioned on the left flank.",
        primary_objectives: "Scoring goals, providing assists, dribbling past defenders.",
        strengths: "Pace, dribbling, cutting inside.",
        weaknesses: "Defensive responsiblities, physical marking."
      },
      famous_player_attributes: {
        famous_player_name: "Cristiano Ronaldo",
        individual_milestones: "5x Ballon d'Or",
        team_trophies_won: "3x Premier League, 2x La Liga, 2x Serie A, 5x Champions League, 1x European Championship, 1x Nations League",
        teams_countries: "Sporting Portugal, Manchester United, Real Madrid, Juventus, Al-Nassr, Portugal",
        photo: { io: URI.open("https://robbreport.com/wp-content/uploads/2023/04/cristianorinaldo.jpg?w=1000"), filename:"cristiano_ronaldo.jpg", content_type: "image/png" }
      }
    },
    "10" => {
      positions_name: "Right Center-back",
      positions_tag: "CB",
      description_attributes: {
        overview_of_position: "Central defender, anchors the defense.",
        primary_objectives: "Marking forwards, intercepting passes, aerial duels.",
        strengths: "Aerial ability, tackling, leadership.",
        weaknesses: "Pace, one-on-one situations."
      },
      famous_player_attributes: {
        famous_player_name: "Bobby Moore",
        individual_milestones: "1x FIFA World Cup All-Star Team 1966, 4x West Ham Player of the Year",
        team_trophies_won: "1x FIFA World Cup, 1x FA Cup",
        teams_countries: "West Ham, Fulham, SA Thunder, Seattle Sounders, Herning Fremad, Carolina Lightnin', England",
        photo: { io: URI.open("https://cdn.whufc.com/sites/default/files/inline-images/Webp.net-resizeimage-7_21.jpg"), filename:"bobby_moore.jpg", content_type: "image/png" }
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
    most_important_terms: "1.TOUCHDOWN: A touchdown is scored in American football when a player carries or catches the ball across the opponent's goal line. 2.FIELD GOAL: A field goal is a scoring play where the ball is kicked between the goalposts. 3.INTERCEPTION: An interception occurs when a defensive player catches a pass inteded for an offensive player, resulting in a change of possession. 4.FUMBLE: A fumble happens in football when a player loses possession of the ball unintentionally, and it becomes free to be recovered by either team. 5.KICKOFF: A kickoff is the method used to start a football game or resume play after a score, with one team kicking the ball to the other to begin the game or following a scoring play."
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
        famous_player_name: "Tom Brady",
        individual_milestones: "7x Super Bowl champion, 5x Super Bowl MVP, 3x NFL MVP, 14x Pro Bowl",
        team_trophies_won: "New England Patriots: 6x AFC champion, Tampa Bay Buccaneers: 1x Super Bowl champion",
        teams_countries: "New England Patriots, Tampa Bay Buccaneers",
        photo: { io: URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/7/77/Tom_Brady_2019.jpg/220px-Tom_Brady_2019.jpg"), filename:"tom_brady.jpg", content_type: "image/png" }
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
        famous_player_name: "Walter Payton",
        individual_milestones: "9x Pro Powl, 7x First-team All-Pro, NFL MVP (1977), NFL Offensive Player of the Year (1977, 1985)",
        team_trophies_won: "Super Bowl XX champion",
        teams_countries: "Chicago Bears",
        photo: { io: URI.open("https://www.chicagoaudible.com/wp-content/uploads/2016/07/payton-e1469480273364-718x1024.jpg"), filename:"walter_payton.jpg", content_type: "image/png" }
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
        individual_milestones: "5x Super Bowl champion, 4x First-team All-Pro, 5x Pro Bowl",
        team_trophies_won: "New England Patriots: 4x Super Bowl champion, Tampa Bay Buccaneers: 1x Super Bowl champion",
        teams_countries: "New England Patriots, Tampa Bay Buccaneers",
        photo: { io: URI.open("https://img.vavel.com/gronk-1564484577291.jpg"), filename:"rob_gronkowski.jpg", content_type: "image/png" }
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
        famous_player_name: "Calvin 'Megatron' Johnson",
        individual_milestones: "6x Pro Bowl, 3x First-team All-Pro, NFL Offensive Rookie of the Year (2007), 2x NFL receiving yards leader",
        team_trophies_won: "None",
        teams_countries: "Detroit Lions",
        photo: { io: URI.open("https://npr.brightspotcdn.com/legacy/sites/michigan/files/201602/calvin-johnson-lions-2015.jpg"), filename:"calvin_johnson.jpg", content_type: "image/png" }
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
        famous_player_name: "Jerry Rice",
        individual_milestones: "13x Pro Bowl, 10x First-team All-Pro, NFL MVP (1987)",
        team_trophies_won: "San Francisco 49ers: 3x Super Bowl champion",
        teams_countries: "San Francisco 49ers, Oakland Raiders, Seattle Seahawks, Denver Broncos",
        photo: { io: URI.open("https://hbr.org/resources/images/article_assets/2022/08/R2205P_JERRY_RICE_TOC.jpg"), filename:"jerry_rice.jpg", content_type: "image/png" }
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
        individual_milestones: "11x Pro Bowl, 1x First-team All-Pro, Walter Payton NFL Man of the Year Award (2016)",
        team_trophies_won: "1x NFC champion (2008)",
        teams_countries: "Arizona Cardinals",
        photo: { io: URI.open("https://cdn.vox-cdn.com/thumbor/kRVkslAtPRqGoKy8fCAfXM3EqXE=/1400x1400/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/22344086/usa_today_14991716.jpg"), filename:"larry_fitzgerald.jpg", content_type: "image/png" }
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
        famous_player_name: "Johnathan Ogden",
        individual_milestones: "11x Pro Bowl, 5x First-team All-Pro, NFL 2000s All-Decade Team",
        team_trophies_won: "Super Bowl XXXV with the Baltimore Ravens",
        teams_countries: "Baltimore Ravens",
        photo: { io: URI.open("https://assets.sbnation.com/imported_assets/7317/39872864.jpg"), filename:"johnathan_ogden.jpg", content_type: "image/png" }
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
        famous_player_name: "Larry Allen",
        individual_milestones: "11x Pro Bowl, 7x First-team All-Pro, NFL 1990s All-Decade Team, NFL 2000s All-Decade Team",
        team_trophies_won: "Super Bowl XXVIII with the Dallas Cowboys",
        teams_countries: "Dallas Cowboys, San Francisco 49ers",
        photo: { io: URI.open("https://i0.wp.com/insidethestar.com/wp-content/uploads/2017/04/jess-haynie_-65-e1493047199769.jpg?fit=1300%2C793&ssl=1"), filename:"larry_allen.jpg", content_type: "image/png" }
      }
    },
    "8" => {
      positions_name: "Centre",
      positions_tag: "C",
      description_attributes: {
        overview_of_position: "Snaps the ball to the quarterback, anchors the offensive line",
        primary_objectives: "Snapping accurately, pass protection, calling blocking assignments",
        strengths: "Intelligence, snapping skills, communication",
        weaknesses: "Powerful nose tackles, bull rush from defensive tackles"
      },
      famous_player_attributes: {
        famous_player_name: "Jason Kelce",
        individual_milestones: "4x Pro Bowl, 3x First-team All-Pro",
        team_trophies_won: "Super Bowl LII with the Philadelphia Eagles",
        teams_countries: "Philadelphia Eagles",
        photo: { io: URI.open("https://people.com/thmb/Gqn_j6ya4NU34-ETL59orpYsUwo=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc():focal(749x0:751x2)/jason-kelce-020123-1-719c575ec86547029b40f15c142f9303.jpg"), filename:"jason_kelce.jpg", content_type: "image/png" }
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
        individual_milestones: "7x Pro Bowl, 4x First-team All-Pro, NFL 2010s All-Decade Team",
        team_trophies_won: "None",
        teams_countries: "Dallas Cowboys",
        photo: { io: URI.open("https://cdn.vox-cdn.com/thumbor/QV4E-c8eQ6JKskhcAp4Zg7_xL8o=/0x0:2048x2968/1200x800/filters:focal(744x692:1070x1018)/cdn.vox-cdn.com/uploads/chorus_image/image/67561285/usa_today_12003539.0.jpg"), filename:"zack_martin.jpg", content_type: "image/png" }
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
        individual_milestones: "7x Pro Bowl, 3x First-team All-Pro, NFL 2000s All-Decade Team",
        team_trophies_won: "Super Bowl XXXIV with the St. Louis Rams",
        teams_countries: "St. Louis Rams, Chicago Bears",
        photo: { io: URI.open("https://i.pinimg.com/originals/84/86/13/8486134bf6418a23ec34c4fe069f7d4b.jpg"), filename:"orlando_pace.jpg", content_type: "image/png" }
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
        individual_milestones: "13x Pro Bowl, 13x First-team All-Pro, NFL 1980s All-Decade Team, NFL 1990s All-Decade Team Team, NFL 100th Anniversary All-Time Team",
        team_trophies_won: "Super Bowl XXXI with the Green Bay Packers",
        teams_countries: "Green Bay Packers, Philadelphia Eagles",
        photo: { io: URI.open("https://www.profootballhistory.com/wp-content/uploads/2022/06/Reggie-White-scaled.jpg"), filename:"reggie_white.jpg", content_type: "image/png" }
      }
    },
    "12" => {
      positions_name: "Defensive Tackle - 3 Tech",
      positions_tag: "DT-3T",
      description_attributes: {
        overview_of_position: "Interior defensive lineman, lines up on the outside shoulder of the guard",
        primary_objectives: "Tackling runners, disrupting the interior offensive line, pass rushing",
        strengths: "Quickness, strength, penetration ability",
        weaknesses: "Double-team blocking, lateral movement"
      },
      famous_player_attributes: {
        famous_player_name: "Aaron Donald",
        individual_milestones: "7x Pro Bowl, 6x First-team All-Pro, 3x NFL Defensive Player of the Year",
        team_trophies_won: "Super Bowl LVI with the LA Rams",
        teams_countries: "LA Rams",
        photo: { io: URI.open("https://cdn.vox-cdn.com/thumbor/q3KpO6k--J3elhX76WkeUrTR_0I=/1400x1050/filters:format(jpeg)/cdn.vox-cdn.com/uploads/chorus_asset/file/23240038/1370407811.jpg"), filename:"aaron_donald.jpg", content_type: "image/png" }
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
        individual_milestones: "5x Pro Bowl, 1x First-team All-Pro",
        team_trophies_won: "Super Bowl XXXVIII and Super Bowl XXXIX with the New England Patriots",
        teams_countries: "New England Patriots, Houston Texans",
        photo: { io: URI.open("https://www.enterprisenews.com/gcdn/authoring/2015/12/09/NENT/ghows-WL-40bd53c6-da12-4e75-b431-4e1befabf8d3-8666e750.jpeg?width=660&height=448&fit=crop&format=pjpg&auto=webp"), filename:"vince_wilfork.jpg", content_type: "image/png" }
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
        individual_milestones: "5x Pro Bowl, 5x First-team All-Pro, 3x NFL Defensive Player of the Year",
        team_trophies_won: "None",
        teams_countries: "Houston Texans, Arizona Cardinals",
        photo: { io: URI.open("https://i.insider.com/6026eae82edd0f001a8d5a59?width=700"), filename:"jj_watt.img", content_type: "image/png" }
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
        individual_milestones: "8x Pro Bowl, 3x First-team All-Pro, Super Bowl 50 MVP",
        team_trophies_won: "Super Bowl 50 with the Denver Broncos and Super Bowl LVI with the LA Rams",
        teams_countries: "Denver Broncos, LA Rams, Buffalo Bills",
        photo: { io: URI.open("https://www.denverpost.com/wp-content/uploads/2020/08/Pick_Six_Bounce-backs__Football_17849.jpg?w=525"), filename:"von_miller.jpg", content_type: "image/png" }
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
        individual_milestones: "8x Pro Bowl, 5x First-team All-Pro, NFL Defensive Player of the Year (2005)",
        team_trophies_won: "NFC champions (2007)",
        teams_countries: "Chicago Bears",
        photo: { io: URI.open("https://i.cbc.ca/1.1563354.1379049146!/httpImage/image.jpg_gen/derivatives/16x9_780/urlacher-2012.jpg"), filename:"brian_urlacher.jpg", content_type: "image/png" }
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
        individual_milestones: "10x Pro Bowl, 8x First-team All-Pro, 3x NFL Defensive Player of the Year",
        team_trophies_won: "Super Bowl XXI and Super Bowl XXV with the New York Giants",
        teams_countries: "New York Giants",
        photo: { io: URI.open("https://nypost.com/wp-content/uploads/sites/2/2022/12/lawrence-taylor-giants-commanders.jpg"), filename:"lawrence_taylor.jpg", content_type: "image/png" }
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
        individual_milestones: "5x Pro Bowl, 3x First-team All-Pro, Super Bowl XLVIII champion",
        team_trophies_won: "Super Bowl XLVIIII with the Seattle Seahawks",
        teams_countries: "Seattle Seahawks, San Francisco 49ers",
        photo: { io: URI.open("https://compote.slate.com/images/4c2c07c0-cc04-4ad6-a654-4450dcc85eaa.jpg"), filename:"richard_sherman.jpg", content_type: "image/png" }
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
        individual_milestones: "7x Pro Bowl, 4x First-team All-Pro, Super Bowl XLIX champion",
        team_trophies_won: "Super Bowl XLIX with the New England Patriots",
        teams_countries: "New York Jets, New England Patriots, Tampa Bay Buccaneers, Kansas City Chiefs",
        photo: { io: URI.open("https://cdn.bleacherreport.net/images_root/slides/photos/000/356/789/93484679_original.jpg?1282587232"), filename:"darrelle_revis.jpg", content_type: "image/png" }
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
        famous_player_name: "Ed Reed",
        individual_milestones: "9x Pro Bowl, 5x First-team All-Pro, NFL Defensive Player of the Year (2004)",
        team_trophies_won: "Super Bowl XXXVIII with the Baltimore Ravens",
        teams_countries: "Baltimore Ravens, Houston Texans, New York Jets",
        photo: { io: URI.open("https://www.si.com/.image/t_share/MTY4MjYyODY2MTkwMDgzMzQ5/ed-reedjpg.jpg"), filename:"ed_reed.jpg", content_type: "image/png" }
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
        individual_milestones: "8x Pro Bowl, 4x First-team All-Pro, NFL Defensive Player of the Year (2010)",
        team_trophies_won: "Super Bowl XL and Super Bowl XLIII with the Pittsburgh Steelers",
        teams_countries: "Pittsburgh Steelers",
        photo: { io: URI.open("https://static.clubs.nfl.com/image/private/t_editorial_landscape_mobile/f_auto/steelers/rznu3fiv4ovxaodhbdwo.jpg"), filename:"troy_polamalu.jpg", content_type: "image/png" }
      }
    }
  }
}

BASEBALL = {
  name: "Baseball",
  overview_attributes: {
    short_description: "Score runs",
    game_objective: "The aim of baseball is to score more runs than your opponent in a 9-inning playing time frame. The match is split into two halves - the top and bottom of each inning. After the first 9 innings, the team with the most runs wins.",
    governing_body_url: "https://www.mlb.com/"
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
        famous_player_name: "Randy Johnson",
        individual_milestones: "10x All-Star, 5x Cy Young Award winner, 4x ERA title, 2x Triple Crown (Wins, Strikeouts, ERA), Perfect Game (May 18, 2004)",
        team_trophies_won: "World Series championship with the Arizona Diamondbacks (2001)",
        teams_countries: "Montreal Expos, Seattle Mariners, Houston Astros, Arizona Diamondbacks, New York Yankees, San Francisco Giants",
        photo: { io: URI.open("https://cronkitenews.azpbs.org/wp-content/uploads/2020/04/johnson17ks-800.jpg"), filename:"randy_johnson.jpg", content_type: "image/png" }
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
        teams_countries: "Cincinnati Reds",
        photo: { io: URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgk6Gx1C-PxiWFSWEzcrQst_uRfOoP5Zg3ng&usqp=CAU"), filename:"johnny_bench.jpg", content_type: "image/png" }
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
        teams_countries: "New York Yankees",
        photo: { io: URI.open("https://assets-global.website-files.com/615f376480c21d748f7cb89b/647a1654ab83d390164c18d9_Lou%20Gehrig.png"), filename:"lou_gehrig.png", content_type: "image/png" }
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
        teams_countries: "Cincinnati Reds",
        photo: { io: URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLp7h2Ewsi4l0u8Dv6CkV4t6ZgkUKccfEevA&usqp=CAU"), filename:"joe_morgan.img", content_type: "image/png" }
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
        teams_countries: "New York Yankees",
        photo: { io: URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuCHHqn0xB7Vov8fhZqbtb5ue9zjEVdJi_1g&usqp=CAU"), filename:"derek_jeter.img", content_type: "image/png" }
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
        teams_countries: "Philadelphia Phillies",
        photo: { io: URI.open("https://www.onthisday.com/images/people/mike-schmidt.jpg?w=360"), filename:"mike_schmidt.jpg", content_type: "image/png" }
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
        teams_countries: "San Francisco Giants, Pittsburgh Pirates",
        photo: { io: URI.open("https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1240w,f_auto,q_auto:best/msnbc/Components/Photos/040421/040421_bonds_vmed_9p.jpg"), filename:"barry_bonds.jpg", content_type: "image/png" }
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
        teams_countries: "New York/San Francisco Giants",
        photo: { io: URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWPa3vd_h-JQ9R2vZPRUG4qsWTNyLbrqPAig&usqp=CAU"), filename:"willie_mays.img", content_type: "image/png" }
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
        teams_countries: "Milwaukee/Atlanta Braves",
        photo: { io: URI.open("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXNTEGeDiNOcpOEgvXxy7RjNY1oRn9vT67Ew&usqp=CAU"), filename:"hank_aaron.img", content_type: "image/png" }
      }
    }
  }
}

ICE_HOCKEY = {
  name: "Ice Hockey",
  overview_attributes: {
    short_description: "Score goals on ice",
    game_objective: "The aim of hockey is to score more goals than your opponent in a 60-minute playing time frame. The match is split into three periods of 20 minutes each. After the first and second periods, there is a 15-minute intermission. The team with the most goals at the end of the game wins.",
    governing_body_url: "https://www.iihf.com/"
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
        teams_countries: "Canada",
        photo: { io: URI.open("https://i.ebayimg.com/images/g/1D4AAOxymHRRxezu/s-l1600.jpg"), filename:"patrick_roy.jpg", content_type: "image/png" }
      }
    },
    "1" => {
      positions_name: "Right Defenseman",
      positions_tag: "RD",
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
        teams_countries: "Canada",
        photo: { io: URI.open("https://www.si.com/.image/t_share/MTk1NjA0NDU3MDAwNjA4ODI5/090003787-copy.jpg"), filename:"bobby_orr.jpg", content_type: "image/png" }
      }
    },
    "2" => {
      positions_name: "Center Ice",
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
        teams_countries: "Canada",
        photo: { io: URI.open("https://cdn.britannica.com/72/189172-050-04CF2E70/Wayne-Gretzky-New-York-Rangers.jpg"), filename:"wayne_gretzky.jpg", content_type: "image/png" }
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
        teams_countries: "Czech Republic",
        photo: { io: URI.open("https://cdn.nhlpa.com/img/assets/nhlpa.com/gallery/15f3ec40-9fb1-4658-a4c7-7f9070a56cc2/GettyImages-626525658.jpg"), filename:"jaromir_jagr.jpg", content_type: "image/png" }
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
        teams_countries: "Canada",
        photo: { io: URI.open("https://www.dailybreeze.com/wp-content/uploads/migration/2009/200906/NEWS_906239762_AR_0_0.jpg?w=535"), filename:"luc_robitaille.jpg", content_type: "image/png" }
      }
    },
    "5" => {
      positions_name: "Left Defenseman",
      positions_tag: "LD",
      description_attributes: {
        overview_of_position: "Defender, protects the goaltender and initiates offensive plays",
        primary_objectives: "Blocking shots, breaking up plays, moving the puck up the ice",
        strengths: "Defensive awareness, physical play, shot blocking",
        weaknesses: "Skating speed, offensive production"
      },
      famous_player_attributes: {
        famous_player_name: "Nicklas Lidstrom",
        individual_milestones: "7-time Norris Trophy winner, 2x Viking Award",
        team_trophies_won: "4x Stanley Cups, 2006 Olympic Gold Medal, 1991 World Champions",
        teams_countries: "Sweden, Detroit Red Wings",
        photo: { io: URI.open("https://i.pinimg.com/originals/0d/f8/af/0df8af4591cc45edbcfe6a4f0ae2707c.jpg"), filename:"nikolas_ludstrum.jpg", content_type: "image/png" }
      }
    }
  }
}

VOLLEYBALL = {
  name: "Volleyball",
  overview_attributes: {
    short_description: "Score points by sending the ball over the net",
    game_objective: "The aim of volleyball is to score more points than your opponent by successfully sending the ball over the net and into the opponent's court. A match is typically played best out of five sets, and each set is played of 25 points (with some variations).",
    governing_body_url: "https://www.fivb.com/"
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
        teams_countries: "United States",
        photo: { io: URI.open("https://content.production.cdn.art19.com/images/a7/ac/8f/b5/a7ac8fb5-e673-40cf-b511-bd4fd0214edd/44e978141c389df3e023b36a08cba7f2d522a08747b0ef8acb58be8a2ca1636cab841c92b804b34555e439a9213b0884c279e4d2943181818734f6d3ef964498.jpeg"), filename:"karch_kiraly.jpeg", content_type: "image/png" }
      }
    },
    "1" => {
      positions_name: "Outside Hitter Left",
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
        teams_countries: "Brazil",
        photo: { io: URI.open("https://assets.sentinelassam.com/h-upload/2021/04/11/218346-giba.jpg"), filename:"giba.jpg", content_type: "image/png" }
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
        teams_countries: "Russia",
        photo: { io: URI.open("https://fancyodds.com/wp-content/uploads/2021/02/Dmitriy-Muserskiy-biography.jpg"), filename:"dmitriy_muserskiy.jpg", content_type: "image/png" }
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
        teams_countries: "Bulgaria",
        photo: { io: URI.open("https://www.lubevolley.it/public/upload/news/SOKOLOV1.jpg"), filename:"tsvetan_sokolov.jpg", content_type: "image/png" }
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
        teams_countries: "Brazil",
        photo: { io: URI.open("https://editorial01.shutterstock.com/preview-440/5829617f/708d440b/Shutterstock_5829617f.jpg"), filename:"sergio_santos.jpg", content_type: "image/png" }
      }
    },
    "5" => {
      positions_name: "Outside Hitter Right",
      positions_tag: "OHR",
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
        teams_countries: "Brazil",
        photo: { io: URI.open("https://editorial01.shutterstock.com/preview-440/5829617f/708d440b/Shutterstock_5829617f.jpg"), filename:"sergio_santos.jpg", content_type: "image/png" }
      }
    }
  }
}

CURLING = {
  name: "Curling",
  overview_attributes: {
    short_description: "Curling is a team sport, played on ice, where two teams take it in turns to slide stones made of granite towards a target. Traditional teams have 4 players of the same gender, where each player throws 2 stones alternatively with the opposition. Mixed doubles is another format where 2 players one male and one female play on a team together. There are usually between 8-10 ends per match.",
    game_objective: "To have as many stones as close to the center of the house over the other team and to stop the other team from scoring any points.",
    governing_body_url: "https://www.worldcurling.org/about/curling/"
  },
  equipment_need_attributes: {
    footwear: "Curling shoes, one sole grips the ice, the other one, called a slider, is slippery and allows the curler to slide with a stone",
    required_equipment: "Set of stones, made of a special type of granite, a brush",
    safety_gear: "Correct footwear",
    infrastructure: "Push off block. properly prepared ice sheet with all markings",
    clothing: "Jumper, Short Sleeve, Athletic Trousers"
  },
  history_attributes: {
    invented: "16th Century",
    creator: "No specific creator",
    country_of_origin: "Scotland",
    most_successful_teams: "Canada, Sweden, Switzerland & Scotland/Great Britain",
    milestones: "Introduced as a medal event to the Winter Olympics in 1998"
  },
  terminology_attributes: {
    most_important_terms: "HOUSE - The circular target area at each end of the ice sheet where scoring takes place. STONE/ROCK - The granite stone used in curling, each team delivers 8 stones per end. END - A segment of the game where each team delivers all of its stones, alternating with the opposing team. HOG LINE - A line on the ice that the stone must cross during the delivery phase, stones not released before the hog line are removed from play. TAKEOUT: A shot aimed at removing an opponent's stone from play by hitting it with significant force. DRAW: A shot that aims to place the stone in the house without hitting other stones, relying on weight and precision. GUARD: A stone placed in front of the house, intended to protect other stones from being removed or to block the opponent's path. HAMMER: The last stone in an end, which provides a strategic advantage as it allows the team to have the final shot.",
  },
  rule_attributes: {
    game_duration: "Between 2 and 2 and a half hours",
    scoring: "The team that has the stone closest to the middle gets a point for every stone closer to the middle until the opposition stone is next.",
    player_per_team: 4,
    referees: 0,
    most_important_rules: "DELIVERY AND HOG LINE: The stone must be released before reaching the hog line (a specific line on the ice), or it will be removed from play.
    SWEEPING: Teammates can sweep the ice in front of the stone to affect its speed, direction, and curl. However, there are rules regarding when and how sweeping can be done.
    SCORING: Points are awarded based on stone placement in the house (the circular target area). Only stones within the house at the end of an end are counted towards scoring.
    GUARD ZONE & FREE GUARD ZONE RULE: The first four stones of an end can't be removed from play by the opposition until after the fifth stone is delivered (Free Guard Zone Rule).
    STONE PLACEMENT: Stones must come to rest within the playing area and not be touching the backline or outside of the sidelines.",
    field_size: "45m long, and a max of 5m wide.",
    field_type: "Ice Sheet"
  },
  positions_attributes: {
    "0" => {
      positions_name: "Skip",
      positions_tag: "S",
      description_attributes: {
        overview_of_position: "Is the team captain and throws the final 2 stones, makes the final decisions, may have to make any shots dependent on the situation",
        primary_objectives: "Strategist and plans out the shots, calls the shots for what the other players should do and how to brush, makes the pressure shots at the end of each end.",
        strengths: "Strategic Acumen, Decision Making, Leadership, Shot Execution, Communication",
        weaknesses: "Physical Execution, Limited Viewpoint, Pressure & Responsibility, Communication Challenges"
      },
      famous_player_attributes: {
        famous_player_name: "Bruce Moaut",
        individual_milestones: "Skip of Team Scotland/Team GB on multiple occasions",
        team_trophies_won: "1x Olympic Silver Medal, 1x World Championship, 1x World Mixed Doubles Championship, 4x European Championships, 4x Scottish Championships",
        teams_countries: "Great Britain, Scotland as skip of Team Moaut",
        photo: { io: URI.open("https://static.independent.co.uk/2022/02/18/12/b0c041fa4450ae43a806e290aa47623cY29udGVudHNlYXJjaGFwaSwxNjQ1MjY0MzU4-2.65365368.jpg"), filename:"bruce_moaut.jpg", content_type: "image/png" }
      }
    },
      "1" => {
        positions_name: "Vice",
        positions_tag: "V",
        description_attributes: {
          overview_of_position: "They throw the 5th and 6th stones, while the skip throws their stones they act as the strategist.",
          primary_objectives: "Will usually throw draws or takeouts, will sweep when the lead or second are throwing their stones.",
          strengths: "Supporting Skip's Decisions, Shot Execution, Strategy Understanding, Team Communication, Adaptable & Flexible",
          weaknesses: "Pressure in Decision Making, Execution Consistency, Dependency on Skip's Decision, Handling Stress"
      },
      famous_player_attributes: {
        famous_player_name: "Kaitlyn Lawes",
        individual_milestones: "Captained 2008 team to Junior World Championships",
        team_trophies_won: "1x Olympic Gold, 1x Olympic Mixed Doubles Gold, 1x World Championship, 2x Canadian Olympic Trials",
        teams_countries: "Canada as part of Team Jones",
        photo: { io: URI.open("https://www.si.com/.image/ar_16:9%2Cc_fill%2Ccs_srgb%2Cfl_progressive%2Cg_faces:center%2Cq_auto:good%2Cw_768/MTg3NDE5MjMzNjg3MzE2MjM5/22og_lawes_wcf_feature.jpg"), filename:"kaitlyn_lawes.jpg", content_type: "image/png" }
      }
    },
      "2" => {
        positions_name: "Second",
      positions_tag: "SE",
      description_attributes: {
        overview_of_position: "Throws the 3rd and 4th stone of for their team, when not throwing the sweep for all other players on their team.",
        primary_objectives: "Will usually throw takeouts or draws.",
        strengths: "Shot Execution, Sweeping Expertise, Assisting in Strategy, Adaptability, Team Communication",
        weaknesses: "Pressure In Execution, Decision Making Constraints, Managing Stress, Dependency on Skip's Decision"
      },
      famous_player_attributes: {
        famous_player_name: "Rasmus Wranå",
        individual_milestones: "Part of first and only team to win for consecutive gold medals at the world mens curling championship",
        team_trophies_won: "1x Olympic Gold, 4x World Championships, 3x European Championships, 4x Swedish Men's Championships",
        teams_countries: "Sweden as part of Team Edin",
        photo: { io: URI.open("https://bloximages.chicago2.vip.townnews.com/kenoshanews.com/content/tncms/assets/v3/editorial/2/dd/2dd34160-0527-5145-923f-c97cc296121f/5a5ad27ed7b4e.image.jpg?resize=750%2C500"), filename:"rasmus_wrana.jpg", content_type: "image/png" }
      }
    },
      "3" => {
        positions_name: "Lead",
        positions_tag: "L",
        description_attributes: {
          overview_of_position: "Throws the first 2 stones of the end for their team and will then sweep for everyone else.",
          primary_objectives: "Will usually have to throw guards or draws.",
          strengths: "Shot Execution, Sweeping Expertise, Drawing Skills, Early Strategy Contributions, Team Communication",
          weaknesses: "Pressure in Execution, Decision Making Constraints, Limited Role Flexibility, Managing Stress, Dependency on Skip's Decision"
      },
      famous_player_attributes: {
        famous_player_name: "Hailey Duff",
        individual_milestones: "Appointed Member of the Order of the British Empire (MBE) for services to Curling.",
        team_trophies_won: "1x Olympic Gold Medal, 1x European Championship",
        teams_countries: "Great Britain, Scotland as part of Team Muirhead",
        photo: { io: URI.open("https://pbs.twimg.com/profile_images/1464156706917830670/MKNM1Hci_400x400.jpg"), filename:"hailey_duff.jpg", content_type: "image/png" }
      }
    }
  }
}

puts "Creating new sports..."
[BASKETBALL, RUGBY_UNION, FOOTBALL, AMERICAN_FOOTBALL, VOLLEYBALL, ICE_HOCKEY, BASEBALL, CURLING].each do |attributes|
  sport = Sport.create!(attributes)
  puts "Created #{sport.name}"
end
puts "Finished!"

puts 'Creating new Chatrooms...'
Sport.all.each do |sport|
  Chatroom.create(name: "#{sport.name} chatroom", sport_id: sport.id)
  puts "Created #{sport.name} chatroom"
end
puts "Finished!"

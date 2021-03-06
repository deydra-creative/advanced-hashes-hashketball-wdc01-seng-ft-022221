def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end


###
######
#########

def num_points_scored(name)
  game_points = nil
  game_hash.map do |location, team_data|
   team_data[:players].map do |index|
     index.map do |data_name, value|
       if name == index[:player_name]
         game_points = index[:points]
     end
     end
    end
  end
  game_points
end

  def shoe_size(name)
  size_answer = nil 
  game_hash.map do |location, team_data|
   team_data[:players].map do |index|
     index.map do |data_name, value| 
       if name == index[:player_name]
         size_answer = index[:shoe]
       end
   end
 end 
 end 
 size_answer
end

def team_colors(name)
  color_answer = []
  game_hash.map do |location, team_data|
    if name == team_data[:team_name]
      color_answer = team_data[:colors]
  end
  end
  color_answer
end

def team_names
  teams = []
  game_hash.map do |location, team_data|
    teams.push(team_data[:team_name])
  end
  teams
end

def player_numbers (team)
  if game_hash[:home][:team_name] == team 
    game_hash[:home][:players].map {|n| n[:number]}
  elsif game_hash[:away][:team_name] == team 
    game_hash[:away][:players].map {|n| n[:number]}
  else
    puts "nil"
  end 
end

def player_stats(name)
  name_data = {}
  game_hash.map do |location, team_data|
   team_data[:players].map do |index|
     index.map do |data_name, value|
       if name == index[:player_name]
         name_data = index
       end 
     end 
   end 
 end
 name_data
end

def big_shoe_rebounds
  shoe_check = 0 
  rebound_answer = nil
  game_hash.map do |location, team_data|
    team_data[:players].map do |index|
      if shoe_check <= index[:shoe]
        shoe_check = index[:shoe]
        rebound_answer = index[:rebounds]
  end
  end
  end
  rebound_answer
end

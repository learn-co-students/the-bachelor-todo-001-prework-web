require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = nil
  data[season].each do |winner_name|
    if winner_name["status"] == "Winner" 
      winner = winner_name["name"]
    end
  end
  win = winner.split
  win.first
end

def get_contestant_name(data, occupation)
  winner_name = nil
  data.each do |season, season_data|
    season_data.each do |contestant_data|
      if contestant_data["occupation"] == occupation
        winner_name = contestant_data["name"]
      end
    end
  end
  winner_name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, season_data|
    season_data.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  contestant_occupation = nil
  data.each do |season, season_data|
    season_data.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        return contestant_occupation = contestant_data["occupation"]
      end
    end
  end
  contestant_occupation
end

def get_average_age_for_season(data, season)
  age = []

  data[season].each do |contestant_data|
      age << contestant_data["age"].to_f
  end
  total = 0.0
  age.each do |num|
    total += num
  end

  average = total / age.size

  average_age = average.round
end
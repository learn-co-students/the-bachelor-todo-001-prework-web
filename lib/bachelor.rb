require 'pry'

def get_first_name_of_season_winner(data, season)
  contestant = nil
  data[season].each do |contestant_data|
    if contestant_data["status"] == "Winner"
      contestant = contestant_data["name"].split(' ')[0]
    end
  end
  contestant
end


def get_contestant_name(data, occupation)
  contestant = nil
  data.each do |season, season_data|
    season_data.each do |contestant_data|
      if contestant_data["occupation"] == occupation
        contestant = contestant_data["name"]
      end
    end
  end
  contestant
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, season_data|
    season_data.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        counter = counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  contestant = nil
  data.each do |season, season_data|
    season_data.each do |contestant_data|
      if contestant_data["hometown"] == hometown
        contestant = contestant_data["occupation"]
        break
      end
    end
  end
  contestant
end


def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].each do |contestant_data|
    ages << contestant_data["age"].to_i
  end


  sum = 0
  ages.each do |number|
    sum += number.to_f
  end

  average = sum/ages.length

  average.round
end






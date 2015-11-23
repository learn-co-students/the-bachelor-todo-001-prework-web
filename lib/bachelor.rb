require 'pry'

def get_first_name_of_season_winner(data, season)
  
  winner = ""
  
  data.each do |season_key, contestants|
    if season_key == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
        winner = contestant["name"]
        end
      end 
    end
  end
  winner_array = winner.split
  winner_array[0]
end

def get_contestant_name(data, occupation)
  
  name = ""
  
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        name = contestant["name"]
      end
    end
  end

  name

end

def count_contestants_by_hometown(data, hometown)
  
  counter = 0

  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end

  counter

end

def get_occupation(data, hometown)
  
  occupation = ""

  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown && occupation == ""
        occupation = contestant["occupation"]
      end
    end
  end

  occupation

end

def get_average_age_for_season(data, season)
  
  num_contestants = 0.0
  age_total = 0.0

  data.each do |season_key, contestants|
    if season_key == season
      num_contestants = contestants.count
      contestants.each do |contestant|
        age_total += contestant["age"].to_f
      end
    end
  end

  average = age_total / num_contestants
  average_age = average.round

end

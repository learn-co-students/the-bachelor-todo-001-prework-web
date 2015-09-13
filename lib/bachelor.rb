require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = nil
    data.each do |seasons, contestants|
    if season == seasons
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          winner = (contestant["name"]).split(" ")[0]
        end
      end
    end
  end
    winner
  end

def get_contestant_name(data, occupation)
  person = nil
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        person = contestant["name"]
      end
    end
  end
  person
end

def count_contestants_by_hometown(data, hometown)
    count = 0
    data.each do |season, contestants|
      contestants.each do |contestant|
        if contestant["hometown"] == hometown
          count += 1
        end
      end
    end
  return count
end


def get_occupation(data, hometown)
  occupation = nil
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        occupation = contestant["occupation"]
        break     
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  ages = data[season].collect do |contestants|
   contestants["age"].to_i
  end
  average = (ages.inject { |total, i| total + i } / (ages.length * 1.0)).round
end


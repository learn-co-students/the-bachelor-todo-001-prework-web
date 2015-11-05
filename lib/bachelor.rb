require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = "No winner yet"
  data[season].each do |contestant|
    winner = contestant["name"].split[0] if contestant["status"] == "Winner"
  end
  winner
end

def get_contestant_name(data, occupation)
  contestant = "No contestant had that occupation"
  data.values.each do |contestants|
    contestants.each do |person|
      contestant = person["name"] if person["occupation"] == occupation
    end
  end
  contestant
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.values.each do |contestants|
    contestants.each do |person|
      count += 1 if person["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  occupation = "No contestant from that hometown"
  data.values.each do |contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        occupation = person["occupation"]
        break
      end 
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  combined_age = 0
  num_contestants = 0
  data[season].each do |contestant|
    combined_age += contestant["age"].to_f
    num_contestants += 1
  end
  (combined_age / num_contestants).round
end

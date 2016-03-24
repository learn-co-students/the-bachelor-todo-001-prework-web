require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = ""
  data[season].each do |contestant|
    contestant.each do |attribute, fact|
      if contestant["status"] == "Winner"
        winner = contestant["name"]
        winner = winner.split(" ")
        winner = winner[0]
      end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, contestant_array|
    contestant_array.each do |contestant| #contestant is hash containing key-value pairs
      contestant.each do |attribute, fact|
        if fact == occupation
          name = contestant["name"]
        end
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  i = 0

  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      if contestant.value?(hometown)
        i+=1
      end
    end
  end
  i
end

def get_occupation(data, hometown)
  contestants_occupations = []
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      if contestant.value?(hometown)
        contestants_occupations << contestant["occupation"]
      end
    end
  end
  contestants_occupations[0]
end

def get_average_age_for_season(data, season)
  i = 0
  average_age = 0

  season_contestants = data[season]
  number_of_contestants = 0..(season_contestants.length-1)

  season_contestants.each do |contestant_hash|
    average_age += contestant_hash["age"].to_i.to_f
  end

  average_age = average_age/(season_contestants.length)

  if (average_age + 0.5) > average_age.to_i
    average_age = (average_age + 0.5).to_i
  else
    average_age
  end
end

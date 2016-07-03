require 'pry'

def get_first_name_of_season_winner(data, season)
  first_name = ""
  contestants = data[season]
  contestants.each_with_index do |contestant_hash, index|
    if contestant_hash["status"] == "Winner"
      name = contestant_hash["name"]
      first_name = name.split(" ").first
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, contestants|
    contestants.each_with_index do |contestant_hash, index|
      if contestant_hash["occupation"] == occupation
        name = contestant_hash["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each_with_index do |contestant_hash, index|
      if contestant_hash["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  occupation = "not known"
  data.each do |season, contestants|
    contestants.each_with_index do |contestant_hash, index|
      if contestant_hash["hometown"] == hometown
        occupation = contestant_hash["occupation"]
        break
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  cumulative_age = 0
  number_of_contestants = 0
  contestants = data[season]
  contestants.each_with_index do |contestant_hash, index|
    cumulative_age += contestant_hash["age"].to_f
    number_of_contestants +=1
  end
  if number_of_contestants == 0
    puts "The average age of contestants for #{season} is unknown/No contestants found for #{season}"
  else
    (cumulative_age / number_of_contestants).round
  end
end

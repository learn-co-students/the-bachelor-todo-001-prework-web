require 'pry'

def get_first_name_of_season_winner(data, season)  
  data.each do |key, set|
    if key == season
      return set[0]["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each_value do |info|
    info.each do |contestant|
      return contestant["name"]  if contestant["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each_value do |info|
    info.each do |contestant|
      count += 1  if contestant["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each_value do |info|
    info.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
    sum_of_ages = 0
    num_contestants = 0
    data[season].each do |contestant|
      sum_of_ages += contestant["age"].to_f
      num_contestants += 1
    end
    (sum_of_ages / num_contestants).round
end

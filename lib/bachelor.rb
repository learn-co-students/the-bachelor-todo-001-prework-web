def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant|
    return contestant["name"].split[0] if contestant["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["name"] if contestant["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      count += 1 if contestant["hometown"] == hometown
    end
  end
  return count
end

def get_occupation(data, hometown)
  # code here
    data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  num_contestants = 0
  data[season].each do |contestant|
    num_contestants += 1
    total_age += contestant["age"].to_f
  end
  return ((total_age / num_contestants).round)
end

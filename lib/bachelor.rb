def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["name"] if contestant["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  contestants_in_hometown = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestants_in_hometown += 1 if contestant["hometown"] == hometown
    end
  end
  contestants_in_hometown
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  number_of_contestants = 0
  total_age = 0
  data[season].each do |contestant|
    number_of_contestants += 1
    total_age += contestant["age"].to_i
  end
  (total_age.to_f / number_of_contestants).round
end

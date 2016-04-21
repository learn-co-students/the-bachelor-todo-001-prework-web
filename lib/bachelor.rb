def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant_hash|
    if contestant_hash["status"].downcase == "winner"
      return contestant_hash["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        hometown_counter += 1
      end
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_total = 0
  num_of_contestants = 0
  data[season].each do |contestant|
    age_total += (contestant["age"]).to_f
    num_of_contestants += 1
  end
  (age_total / num_of_contestants).round(0)
end

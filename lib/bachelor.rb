def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    return contestant["name"].split(" ")[0] if contestant.has_value?("Winner")
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      return contestant["name"] if contestant.has_value?(occupation)
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      counter += 1 if contestant.has_value?(hometown)
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant_array|
    contestant_array.each do |contestant|
      return contestant["occupation"] if contestant.has_value?(hometown)
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |contestant|
    ages << contestant["age"].to_i
  end
  average = ages.reduce(:+).to_f / ages.length
  average.round
end


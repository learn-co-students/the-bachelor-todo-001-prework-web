def get_first_name_of_season_winner(data, season)
  data[season].each do |hash|
    if hash.has_value?("Winner")
      return hash["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant_array|
    contestant_array.each do |hash|
      if hash.has_value?(occupation)
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season, contestant_array|
    contestant_array.each do |hash|
      if hash.has_value?(hometown)
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant_array|
    contestant_array.each do |hash|
      if hash.has_value?(hometown)
        return hash["occupation"] 
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages_total = 0
  contestant_total = 0
  data[season].each do |hash|
      contestant_total += 1
      ages_total += hash["age"].to_f
  end
  average_age = (ages_total / contestant_total).round
end

def get_first_name_of_season_winner(data, season)
  data[season].each do |hash_person|
    if hash_person.has_value?("Winner")
      return hash_person["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array_contestants|
    array_contestants.each do |hash_person|
      if hash_person.has_value?(occupation)
        return hash_person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |season, array_contestants|
    array_contestants.each do |hash_person|
      if hash_person.has_value?(hometown)
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, array_contestants|
    array_contestants.each do |hash_person|
      if hash_person.has_value?(hometown)
        return hash_person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  total_contestants = 0
  data[season].each do |hash_person|
    total_contestants += 1
    total_age += hash_person["age"].to_f
  end
  average = (total_age / total_contestants).round
end

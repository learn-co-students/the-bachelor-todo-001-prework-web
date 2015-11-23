def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |key, value|
      if key["occupation"] == occupation
        return key["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0

  data.each do |season, info|
    info.each do |key, value|
      if key["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, info|
    info.each do |key, value|
      if key["hometown"] == hometown
        return key["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_string = []
  # puts age_integer = age_string.collect {|i| i.to_i}
  # puts age_no = age_integer.length
  # puts age_total = age_integer.reduce(:+)
  #
  # puts average_age = (age_total/age_no)

  data[season].each do |contestant|
    age_string << contestant["age"]
  end
  age_integer = age_string.collect {|i| i.to_i}
  age_no = age_integer.length
  age_total = age_integer.reduce(:+)
  average_age = (age_total.to_f/age_no.to_f)
  return average_age.round
end

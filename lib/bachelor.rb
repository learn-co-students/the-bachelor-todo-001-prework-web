def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |info|
    if info["status"] == "Winner"
      array = info["name"].split(" ")       
      return array[0]
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |info|
      if info["occupation"] == occupation
        return info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  i = 0
  data.each do |season, contestants|
    contestants.each do |info|
      if info["hometown"] == hometown
        i += 1
      end
    end
  end
  i
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
  data[season].each do |info|
    age_array << info["age"].to_i
  end
  sum = 0
  age_array.each do |num|
    sum = sum + num
  end
  average = sum / age_array.size.to_f
  average.round
end 

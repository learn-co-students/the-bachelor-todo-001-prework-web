def get_first_name_of_season_winner(data, season)
  name = ""
  data.each do |season_number, details|
    if season == season_number
      details.each do |stat, info|
        if stat["status"] == "Winner"
          name = stat["name"]
        end
      end
    end
  end
  array = []
  array = name.split(" ")
  return array[0]
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season_number, details|
    details.each do |stat, info|
      if stat["occupation"] == occupation
        return stat["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_number, details|
    details.each do |stat, info|
      if stat["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season_number, details|
    details.each do |stat, info|
      if stat["hometown"] == hometown
        return stat["occupation"]
        break
      end
    end
  end
end

def get_average_age_for_season(data, season)
  array = []
  data.each do |season_number, details|
    details.each do |stat, info|
      if season_number == season
        age_str = ""
        age_str = stat["age"]
        age_int = age_str.to_i
        array.push(age_int)
      end
    end
  end
  array_sum = 0.0
  array.each {|x| array_sum += x}
  f = array_sum / array.length
  return f.round
end

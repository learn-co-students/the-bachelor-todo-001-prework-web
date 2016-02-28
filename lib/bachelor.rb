def get_first_name_of_season_winner(data, season)
  # code here
  full_name = ""
  x=0
  until full_name != ""
    if data[season][x]["status"] == "Winner"
      full_name = data[season][x]["name"]
    else
      x+= 1
    end
  end
  return_string = full_name.split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season,array|
    array.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  return_num = 0
  data.each do |season,array|
    array.each do |contestant|
      if contestant["hometown"] == hometown
        return_num += 1
      end
    end
  end
  return_num
end

def get_occupation(data, hometown)
  # code here
  data.each do |season,array|
    array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  counter = 0
  age_sum = 0
  data.each do |season_key,array|
    if season_key == season
      array.each do |contestant|
        age_sum += contestant["age"].to_f
        counter +=1
      end
    end
  end
  return (age_sum/counter).round
end
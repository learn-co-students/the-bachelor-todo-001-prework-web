def get_first_name_of_season_winner(data, season)
  # code here
  winner_name = ""
  data.each do |season_key, info_hash|
    if season_key == season
      info_hash.each do |info_array|
        info_array.each do |info_key, info|
          # puts "info_key is #{info_key}: info is #{info}"
          if info_array["status"] == "Winner"
            winner_name = info_array["name"]
            # puts "winner_name is #{winner_name}"
          end
        end
      end
    end
  end
  winner_array = winner_name.split
  winner_name = winner_array[0]
  return winner_name
end

def get_contestant_name(data, occupation)
  # code here
  occupation_name = ""
  data.each do |season_key, info_hash|
      info_hash.each do |info_array|
        info_array.each do |info_key, info|
          # puts "info_key is #{info_key}: info is #{info}"
          if info_array["occupation"] == occupation
            occupation_name = info_array["name"]
            # puts "winner_name is #{winner_name}"
          end
        end
      end
  end
  return occupation_name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_key, info_hash|
      info_hash.each do |info_array|
        if info_array["hometown"] == hometown
            # puts "hometown argument is #{hometown}"
            # puts "hometown for contestent is #{info_array["hometown"]}"
            counter += 1
        end
      end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_key, info_hash|
      info_hash.each do |info_array|
        if info_array["hometown"] == hometown
          return info_array["occupation"]
            # puts "hometown argument is #{hometown}"
            # puts "hometown for contestent is #{info_array["hometown"]}"
        end
      end
  end
end

def get_average_age_for_season(data, season)
  # code here
  average_age_array = []
  average_array_int = []
  average_age_season = 0
  data.each do |season_key, info_hash|
    if season_key == season
      info_hash.each do |info_array|
        average_age_array << info_array["age"]
      end
    end
  end
  average_age_array.collect {|x| average_array_int << x.to_i}
  # puts "average_array_int is #{average_array_int}"
  average_age_season = average_array_int.inject{|average_age_season, x| average_age_season + x }.to_f / average_array_int.size
  # puts "average_age_season is #{average_age_season}: average_array_int size #{average_array_int.size}"
  # average_age_season = average_age_array.sum / average_age_array.size.to_f
  return average_age_season.round
end

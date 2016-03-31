def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |contestant_hash|
   if contestant_hash["status"]=="Winner"
     return contestant_hash["name"].split(" ").first
   end
 end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |f,r|
    r.each do |x,t|
      if x.has_value?(occupation)
      return x["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
    hometownCount = 0
  data.each do |season, contestantArray|
    contestantArray.each do |hash|
      if hash["hometown"] == hometown
        hometownCount += 1
      end
    end
  end
hometownCount
end

def get_occupation(data, hometown)
  # code here
contestantOcc = ""
  data.each do |season, contestantArray|
    contestantArray.each do |hash|
      if hash["hometown"] == hometown
        contestantOcc = hash["occupation"]
        break
      end
    end
  end
  contestantOcc
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
 count = 0
  data[season].each do |hash|
    age += hash["age"].to_f
    count += 1
  end
 (age / count).round
end

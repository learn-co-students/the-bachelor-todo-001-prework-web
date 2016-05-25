def get_first_name_of_season_winner(data, season)
  data[season].each do |x|
    if x["status"] == "Winner"
      return x["name"].split(" ").first
    else
    end
  end
end



def get_contestant_name(data, occupation)
  data.each do |seasons, contestants|
    contestants.each do |contestant, information |
      if contestant["occupation"] == occupation
        return contestant["name"]
      else
        #pass
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  shared_home = []
  data.each do |seasons, contestants|
    contestants.each do |contestant, information|
      if contestant["hometown"] == hometown
        shared_home << contestant
      else
        #pass
      end
    end
  end
  return shared_home.count
end

def get_occupation(data, count_contestants_by_hometownetown)
  entry = count_contestants_by_hometownetown.split(",")
  entry_name = entry.first
  entry_location = entry.last
  puts entry_name
  puts entry_location
  winner = []
  data.each do |seasons, contestants|
    contestants.each do |contestant, information|
      if contestant["name"] == entry_name
        winner << contestant["occupation"]
      else
      end
    end
  end
  return winner
end

def get_average_age_for_season(data, season)
  # code here
end



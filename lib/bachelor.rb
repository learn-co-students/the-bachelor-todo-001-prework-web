def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_info|
    if contestant_info["status"] == "Winner"
      return contestant_info["name"].split(" ").first 
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |category, fact|
      if category["occupation"] == occupation
        return category["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
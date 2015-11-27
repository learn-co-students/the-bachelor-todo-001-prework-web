def get_first_name_of_season_winner(data, season)
  name = nil
  data[season].each do |key, val|
    key.each do |key, val| key == "name" ? name = val : nil
      return name.split[0] if key == "status" && val == "Winner"
    end
  end
  name
end

def get_contestant_name(data, occupation)
  # code here
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

def get_first_name_of_season_winner(data, season)
  data[season].each do |hash|
    return hash["name"].split.first if hash["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, season_info|
    season_info.each do |hash|
      return hash["name"] if hash["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, season_info|
    season_info.each do |hash|
      count += 1 if hash["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, season_info|
    season_info.each do |hash|
      return hash["occupation"] if hash["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  total = 0
  num = 0
  data[season].each do |attribute|
    attribute.each do |x, y|
      if x == "age"
        total += y.to_f
      end
    end
    num += 1
  end
  return (total/num).to_f.round
end

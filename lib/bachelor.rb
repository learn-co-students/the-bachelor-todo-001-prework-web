
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants|
    return contestants["name"].split[0] if contestants.has_value?("Winner")
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |info|
      return info["name"] if info.has_value?(occupation)
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |info|
      count += 1  if info.has_value?(hometown)
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |info|
      return info["occupation"] if info.has_value?(hometown)
    end
  end
end

def get_average_age_for_season(data, season)
  average = []
  data[season].each do |contestants|
    average << contestants["age"]
  end
  (average.inject {|x, y| x.to_f + y.to_f} / average.size).round
end

def get_first_name_of_season_winner(data, season)
  data[season].each do |seas|
    return seas["name"].split(" ")[0]
  end
end

def get_contestant_name(data, occupation)
  data.each do |seas, stats|
    stats.each do |seasons|
      if seasons["occupation"] == occupation
        return seasons["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  from_town = 0
  data.each do |season,stats|
    stats.each do |stat|
      if stat["hometown"] == hometown
        from_town += 1
      end
    end
  end
  return from_town
end

def get_occupation(data, hometown)
  data.each do |season, arr|
    arr.each do |stats|
      if stats["hometown"] == hometown
        return stats["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  people = 0
  data[season].each do |stats|
    age += stats["age"].to_f
    people += 1.0
  end
  return (age/people).round
end

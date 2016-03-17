def get_first_name_of_season_winner(data, season)
  data[season].each do |hash|
    if hash["status"] == "Winner"
      name = hash["name"].split(" ")
      return name[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |hash|
    ages << hash["age"].to_i
  end
  total = ages.inject(:+)
  avg = total.to_f / ages.length
  return avg.round
end

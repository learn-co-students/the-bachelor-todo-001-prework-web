def get_first_name_of_season_winner(data, season)
  data[season].each do |hash|
    if hash["status"].downcase == "winner"
      name = hash["name"].split(" ")
      return name[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season,contestants|
    contestants.each do |hash|
      if hash["occupation"].downcase == occupation.downcase
        return hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season,contestants|
    contestants.each do |hash|
      if hash["hometown"] == hometown
        count +=1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season,contestants|
    contestants.each do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  age = 0
  contestants = 0
  data[season].each do |hash|
    age+=hash["age"].to_i
    contestants+=1
  end
  (age/contestants.to_f).round(0)
end


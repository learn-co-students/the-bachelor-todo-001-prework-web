def get_first_name_of_season_winner(data, season)
  winner = []
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      winner = contestant["name"].split(" ")
    end
  end
  return winner[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, contestant|
    contestant.each do |info|
      if info["occupation"] == occupation
        return info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestant|
    contestant.each do |info|
      if info["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |season, contestant|
    contestant.each do |info|
      if info["hometown"] == hometown
        return info["occupation"]
        break
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total = 0
  num_contestants = 0
  data[season].each do |contestant|
    total += contestant["age"].to_i
    num_contestants += 1
    end
  return (total.to_f/num_contestants.to_f).to_f.round
end

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |acter| 
    if acter["status"] == "Winner"
      return acter["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, acter|
    acter.each do |index|
      if index["occupation"] == occupation
        return index["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, actor|
    actor.each do |index|
      if index["hometown"] == hometown
        counter += 1
      end
    end 
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, acter|
    acter.each do |index|
      if index["hometown"] == hometown
        return index["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  counter = 0
  counterAge = 0
  data[season].each do |actor|
    counter += 1
    counterAge += actor["age"].to_f
  end
  return (counterAge / counter).round
end

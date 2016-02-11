def get_first_name_of_season_winner(data, season)
  data[season].each do |element|
    if element["status"] == "Winner"
      return element["name"].partition(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, array|
    data[season].each do |element|
      if element["occupation"] == occupation
        return element["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)

  counter = 0

  data.each do |season, array|
    data[season].each do |element|
      if element["hometown"] == hometown
        counter += 1
      end
    end
  end

  counter
end

def get_occupation(data, hometown)
  data.each do |season, array|
    data[season].each do |element|
      if element["hometown"] == hometown
        return element["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  
  arr = []

    data[season].each do |element|
      arr << element["age"].to_f
    end

  (arr.inject {|sum, n| sum + n} / arr.length).round

end

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, season_data|

    season_data.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0

  data.each do |season, season_data|
    season_data.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end

  count
end


def get_occupation(data, hometown)
  data.each do |season, season_data|
    season_data.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []

  data[season].each do |contestant|
    ages << contestant["age"].to_f
  end
  
  mean_age = ages.inject(:+) / ages.count
  mean_age.round
end

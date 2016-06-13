def get_first_name_of_season_winner(data, season)
  data[season].each do |attributes|
    attributes.each do |key, value|
      if value == "Winner"
        return attributes["name"].split.first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, season_data|
    season_data.each do |attributes|
      attributes.each do |key, value|
        if value == occupation
          return attributes["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, season_data|
    season_data.each do |attributes|
      attributes.each do |key, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, season_data|
    season_data.each do |attributes|
      attributes.each do |key, value|
        if value == hometown
          return attributes["occupation"]
          break
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  count = 0
  total_age = 0
  data[season].each do |attributes|
    attributes.each do |key, value|
      count += 1
      total_age += (attributes["age"].to_f)
    end
  end
   (total_age / count).round
end

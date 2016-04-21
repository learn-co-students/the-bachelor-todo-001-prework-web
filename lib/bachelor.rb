def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |contestant|
        contestant.each do |key, value|
          if value == "Winner"
            return contestant["name"].split[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
        contestant.each do |key, value|
          if value == occupation
            return contestant["name"]
          end
        end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
        contestant.each do |key, value|
          if value == hometown
            hometown_counter += 1
          end
        end
    end
  end
  hometown_counter
end

def get_occupation(data, hometown)
  # code here
    data.each do |season, contestants|
    contestants.each do |contestant|
        contestant.each do |key, value|
          if value == hometown
            return contestant["occupation"]
          end
        end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  number_of_contestants = 0
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |contestant|
        number_of_contestants += 1
        contestant.each do |key, value|
          if key == "age"
             total_age += value.to_f
          end
        end
      end
    end
  end
  average_age_for_season = total_age/number_of_contestants
  average_age_for_season.round
end

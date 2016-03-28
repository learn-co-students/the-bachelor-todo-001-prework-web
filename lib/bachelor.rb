require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |season_number, contestants|
    if season == season_number.to_s
      contestants.each do |contestant|
        contestant.each do |key, value|
          if contestant["status"] == "Winner"
            name = contestant["name"].split(" ")
            return name[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number, contestants|
    contestants.each do |contestant|
      contestant.each do |key, value|
        if contestant["occupation"] == occupation
          return contestant["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0

    data.each do |season_number, contestants|
      contestants.each do |contestant|
        if contestant["hometown"] == hometown
          hometown_count += 1
        end
      end
    end

return hometown_count

end

def get_occupation(data, hometown)
  data.each do |season_number, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = 0.0
  count = 0.0

  data.each do |season_number, contestants|
    contestants.each do |contestant|
      if season_number == season
        ages += contestant["age"].to_f
        count += 1.0
      end
    end
  end

  return (ages/count).round
end

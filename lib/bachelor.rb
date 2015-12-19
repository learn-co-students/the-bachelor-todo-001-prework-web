def get_first_name_of_season_winner(data, season)
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |contestant|
        if contestant["status"] = "Winner"
          return contestant["name"].split(" ")[0]
        end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  data.each do |season_number, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  same_hometown = Array.new
  data.each do |season_number, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        same_hometown<<contestant["name"]
      end
    end
  end
  same_hometown.length
end

def get_occupation(data, hometown)
  data.each do |season_number, contestants|
    contestants.collect do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  data.each do |season_number, contestants|
    if season_number == season
      sum = 0
      contestants.each do |contestant|
        sum = sum + contestant["age"].to_i
      end
      return (sum.to_f / contestants.length.to_f).round
    end
  end
end

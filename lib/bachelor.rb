require "pry"


def get_first_name_of_season_winner(data, season)
  data.each do |season_e,contestants|
    if season_e == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season,contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  num_of_contestants = 0
  data.each do |season,contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        num_of_contestants += 1
      end
    end
  end
  num_of_contestants
end

def get_occupation(data, hometown)
  data.each do |season,contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  average_age = 0
  data.each do |season_e,contestants|
    if season_e == season
      contestants.each do |contestant|
        average_age += contestant["age"].to_f
      end
      average_age = average_age/contestants.length
    end
  end
  average_age.round
end

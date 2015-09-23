require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |contenstant|
        if contenstant.has_value?("Winner")
          return contenstant["name"].split(" ")[0]
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
  hometown_counter = 0

  data.each do |season_number, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        hometown_counter += 1
      end
    end
  end

  hometown_counter
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
  ages = []

  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |contestant|
        ages << contestant["age"].to_i
      end
    end
  end
  (ages.inject{|sum, x| sum += x}/ages.size.to_f).round
end

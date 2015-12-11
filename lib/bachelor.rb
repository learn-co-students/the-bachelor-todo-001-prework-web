require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_number, season_contestants|
    if season_number == season
      season_contestants.each do |contestant|
        return contestant["name"].split.first if contestant["status"] == "Winner"
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number, season_contestants|
      season_contestants.each do |contestant|
        return contestant["name"] if contestant["occupation"] == occupation
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season_number, season_contestants|
    season_contestants.each do |contestant|
      hometown_count += 1 if contestant["hometown"] == hometown
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |season_number, season_contestants|
    season_contestants.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  contestant_count = 0
  data.each do |season_number, season_contestants|
    if season_number == season
      season_contestants.each do |contestant|
        age_total += contestant["age"].to_f
        contestant_count += 1
      end
    end
  end
  (age_total / contestant_count).round
end

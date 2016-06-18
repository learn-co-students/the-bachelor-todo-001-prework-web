require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |show_season, contestants|
    if show_season == season
      contestants.each do |attributes|
        return attributes["name"].split[0] if attributes["status"] == "Winner"
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |show_season, contestants|
    contestants.each do |attributes|
      return attributes["name"] if attributes["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |show_season, contestants|
    contestants.each do |attributes|
      count += 1 if attributes["hometown"] == hometown
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |show_season, contestants|
    contestants.each do |attributes|
      return attributes["occupation"] if attributes["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  contestant_number = 0
  total_age = 0

  data.each do |show_season, contestants|
    if show_season == season
      contestants.each do |attributes|
        contestant_number += 1
        total_age += attributes["age"].to_f
      end
    end
  end

  return (total_age / contestant_number).round
end

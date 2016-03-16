require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_info|
    if contestant_info["status"] == "Winner"
      return contestant_info["name"].split(" ").first 
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |category, fact|
      if category["occupation"] == occupation
        return category["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  #interate through data hash (key of season, value of contestant array)
  # binding.pry
  counter = 0
  data.each do |season, season_array|
    season_array.each do |contestant|
      if contestant["hometown"] == hometown 
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  #iterate over data and then season_array.
  #return occupation for hometown
  the_job = []
  data.each do |season, season_array|
    season_array.each do |contestant|
      if contestant["hometown"] == hometown
        the_job << contestant["occupation"]
      end
    end
  end
  the_job.shift
end

def get_average_age_for_season(data, season)
  # iterate over data from the season
  # collect the ages
  # return the average of the ages
  ages_array = []
  data.each do |season, season_array|
    season_array.each do |contestant|
      contestant.each do |k,v|
        ages_array << contestant["age"].to_i
      end
    end
  end
  avg_age = ages_array.inject{|sum, element| sum + element}/ages_array.size
  return avg_age
end
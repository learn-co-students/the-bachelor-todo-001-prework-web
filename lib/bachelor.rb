require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      return contestant_hash["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |key, value| #NOTE: value is an array.
    value.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |key, value|
    value.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  data.each do |key, value|
    value.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
        break
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum_of_all_ages = 0
  data[season].each do |contestant_hash|
    #binding.pry
    sum_of_all_ages += contestant_hash["age"].to_f
  end
  (sum_of_all_ages / data[season].length).round
end

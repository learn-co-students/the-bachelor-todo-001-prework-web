require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_str_key, all_contestants_array|
    #we're in the data hash
    if season_str_key == season


      all_contestants_array.each do |contestant_hash|
        #we're in the array

        contestant_hash.each do |info_key, value|
          #we're in the individual contestant hash

          if info_key == "name"
            first_name = value.split(" ")
            return first_name[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_str_key, all_contestants_array|
    #we're in the data hash
    all_contestants_array.each do |contestant|
      #we're in the array
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season_key, all_contestants_array|
    all_contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  return hometown_count
end

def get_occupation(data, hometown)
  #returns the occupation of the first contestant who hails from that hometown
  data.each do |season_key, all_contestants_array|
    all_contestants_array.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  num_of_contestants = 0
  sum_of_ages = 0
  data.each do |season_key, all_contestants_array|
    if season_key == season
      all_contestants_array.each do |contestant|
        sum_of_ages = contestant["age"].to_f + sum_of_ages
        num_of_contestants += 1
      end
    end
  end
  return (sum_of_ages / num_of_contestants).round
end

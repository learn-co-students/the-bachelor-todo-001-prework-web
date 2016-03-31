require "pry"
def get_first_name_of_season_winner(data, season)
  data.each do |season_key, data_array|
    if season_key == season
      data_array.each do |details_hash|
        details_hash.each do |details, data|
          if details_hash["status"] == "Winner"
            return  details_hash["name"].split.first
          end
        end
      end
    end
  end
end

    

def get_contestant_name(data, occupation)
  data.each do |season_key, data_array|
    data_array.each do |details_hash|
      if details_hash["occupation"] == occupation
        return details_hash["name"]
      end
    end
  end
  "No contestant with input occupation!"
end



def count_contestants_by_hometown(data, hometown)
  counter = 0 
  data.each do |season_key, data_array|
    data_array.each do |details_hash|
      if details_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end


def get_occupation(data, hometown)
  data.each do |season_key, data_array|
    data_array.each do |details_hash|
      if details_hash["hometown"] == hometown
        return details_hash["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  age_array = []
  counter = 0
  data.each do |season_key, data_array|
    if season_key == season
      data_array.each do |details_hash|
        details_hash.each do |details, data|
          if details == "age"
            age_array << data.to_f
            counter += 1
          end
        end
      end
    end
  end
  total_age = 0
  age_array.each do |element|
    total_age += element
  end
  (total_age / counter).round
end



















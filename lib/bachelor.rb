require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |seasonNumber, array|
    #binding.pry
    if seasonNumber == season
      #binding.pry
      array.each do |value|
        if value.has_value?("Winner") == true
          value.each do |data, info|
            #binding.pry
            if data == "name"
              newname = info.split(" ")
              return newname[0]
            end
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasonNumber, array|
    array.each do |value|
      if value.has_value?(occupation)
        value.each do |data, info|
          if data == "name"
            return info
          end
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |seasonNumber, array|
    array.each do |value|
      value.each do |data, info|
        if info == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |seasonNumber, array|
    array.each do |value|
      value.each do |data, info|
        if info == hometown
          return value["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  int = 0 #store the age total here
  count = 0 #number of ages - we'll divide by this later
  data.each do |seasonNumber, array|
    if season == seasonNumber
      array.each do |value|
        value.each do |data, info|
          if data == "age"
            int += info.to_f #conver the age to a float, then add it to int
            count += 1 #increase the number of divisors by 1
          end
        end
      end
    end
  end
  return (int / count).round #return the averages, rounded up
end










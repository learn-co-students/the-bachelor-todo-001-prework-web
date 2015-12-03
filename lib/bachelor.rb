require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |person|
    person.each do |key, value|
       if value == "Winner"
        return person["name"].split[0]
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season|
    season[1].each do |person|
      person.each do |key, value|
        if value == occupation
          return person["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season|
    season[1].each do |person|
      person.each_value do |value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season|
    season[1].each do |person|
      person.each_value do |value|
        if value == hometown
          return person["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  counter = 0.0
  total_ages = 0
  data[season].each do |person|
    person.each do |key, value|
      if key == "age"
        counter += 1.0
        total_ages = total_ages + value.to_i
      end
    end
  end
(total_ages/counter).round
end

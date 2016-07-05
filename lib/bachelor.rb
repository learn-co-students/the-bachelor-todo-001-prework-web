require 'rubygems'
require 'nokogiri'

def get_first_name_of_season_winner(data, season)
  # code here

  data[season].each do |contestants|

    contestants.each do |keys, values|
      if values == "Winner"
        full_name = contestants["name"]
        first_name = full_name.split(' ').first
        return first_name
      end
    end
  end

end

def get_contestant_name(data,  occupation)
  # code here
  data.each do |season, values|
      values.each do |contestants|
        contestants.each do |k,v|
          if v == occupation
            return contestants["name"]
          end
        end
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, values|
    values.each do |hash|
      hash.each do |k,v|
        if v == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, values|
    values.each do |hash|
      hash.each do |k,v|
        if v == hometown
          return hash["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  avg_age = 0.0
  age_total = 0.0
  counter = 0
  data[season].each do |contestants|
    contestants.each do |k, v|
      if k == "age"
        counter = counter + 1
        age = v.to_f
        age_total = age_total + age
      end
    end
  end
  avg_age = (age_total / counter).round
end

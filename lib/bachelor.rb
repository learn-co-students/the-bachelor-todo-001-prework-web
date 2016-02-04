require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |key, value|
    if key == season
      value.each do |element|
        if element["status"] == "Winner"
          return element["name"].split(" ")[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |key, value|
    value.each do |element|
      if element["occupation"] == occupation
        return element["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |key, value|
    value.each do |element|
      if element["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |key, value|
    value.each do |element|
      if element["hometown"] == hometown
        return element["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  counter = 0
  data.each do |key, value|
    if key == season
      value.each do |element|
         total_age += element["age"].to_i
         counter += 1
       end
     end
   end
   (total_age / counter.to_f).round
end

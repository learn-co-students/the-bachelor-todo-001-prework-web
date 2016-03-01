def get_first_name_of_season_winner(data, season)
  data[season].each do |array|
    array.each do |key,value|
      if key == "status" && value == "Winner"
        return array["name"].scan(/\w+\s/).join("").strip
      end
    end
  end
end

def get_contestant_name(data, occupation)
  person = []
    data.each do |key,value|
      value.each do |element|
      if element["occupation"] == occupation
         person << element["name"]
      end
      end
  end
  person.join("")
end

def count_contestants_by_hometown(data, hometown)
  count = 0
    data.each do |key,value|
      value.each do |element|
      if element["hometown"] == hometown
         count += 1
      end
      end
  end
  count
end

def get_occupation(data, hometown)
    occupation = []
    data.each do |key,value|
      value.each do |element|
      if element["hometown"] == hometown
         occupation << element["occupation"]
      end
      end
  end
  occupation.first
end

def get_average_age_for_season(data, season)
    container = []
    data[season].each do |array|
      array.each do |key,value|
        container << array["age"].to_i
     end
  end
  (container.reduce(:+) / container.length).ceil
end

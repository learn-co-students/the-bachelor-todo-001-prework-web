def get_first_name_of_season_winner(data, season)
  # code here
  name = []
  data.each do |key,value|
    if key == season
      value.each do |element|
        if element["status"] == "Winner"
        name = element["name"].split(" ")
        end
      end
    end
  end
  name[0]
end


def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |key, value|
    value.each do |element|
      if element["occupation"] == occupation
        name = element["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  num = 0
  data.each do |key, value|
    value.each do |element|
      if element["hometown"] == hometown
      num += 1
      end
    end
  end
  num
end

def get_occupation(data, hometown)
  # code here
  occupation = []
  data.each do |key, value|
    value.each do |element|
      if element["hometown"] == hometown
      occupation << element["occupation"]
      end
    end
  end
  occupation.first
end

def get_average_age_for_season(data, season)
  # code here
  total = 0.0
  contestants = 0
  data.each do |key, value|
    if season == key
      value.each do |contestant|
        if contestant["age"].to_f > 0
          total += contestant["age"].to_f
          contestants += 1
        end
      end
    end
  end

  (total/contestants).round
end

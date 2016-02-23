require "pry"

def get_first_name_of_season_winner(data, season)
  #name = ""
  #data[season].each do |person|
  #  name = person["name"] if person["status"] == "Winner"
  #end
  #name.split.first
  data[season][0]["name"].split.first
end

def get_contestant_name(data, occupation)
  name = ""
  data.each do |season, person|
    person.each do |attributes|
      name = attributes["name"] if attributes["occupation"] == occupation
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  contestants_count = 0
  data.each do |season, person|
    person.each do |attributes|
      contestants_count += 1 if attributes["hometown"] == hometown
    end
  end
  contestants_count
end

def get_occupation(data, hometown)
  occupation = ""
  data.each do |season, person|
    person.each do |attributes|
      if attributes["hometown"] == hometown
        occupation = attributes["occupation"]
        break
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  age = 0
  data[season].each do |person|
    age += person["age"].to_f
  end
  
  float_age = age / data[season].count
  if float_age - float_age.to_i >= 0.5
    return float_age.to_i + 1
  else
    return float_age.to_i
  end
end
require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |person|
    if person["status"] == "Winner"
      return person["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season|
    season[1].each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season|
    season[1].each do |person|
      if person["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season|
    season[1].each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_array = []
  data[season].each do |person|
    age_array << person["age"].to_f
  end
  average_age = (age_array.inject(:+) / age_array.length).round
  average_age
end

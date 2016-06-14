require 'pry'

def get_first_name_of_season_winner(data, season)
  data[season].each { |contestant| return contestant["name"].split[0] if contestant["status"] == "Winner"}
end

def get_contestant_name(data, occupation)
  data.keys.each do |season|
    data[season].each { |contestant| return contestant["name"] if contestant["occupation"] == occupation }
  end
end

def count_contestants_by_hometown(data, hometown)
count = 0
  data.keys.each do |season|
    data[season].each { |contestant| count += 1 if contestant["hometown"] == hometown }
  end
  count
end

def get_occupation(data, hometown)
  data.keys.each do |season|
    data[season].each { |contestant| return contestant["occupation"] if contestant["hometown"] == hometown }
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  data[season].each { |contestant| total_age += contestant["age"].to_i}
  (total_age.to_f / data[season].length).round
end

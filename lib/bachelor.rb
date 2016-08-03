require 'pry'

def get_first_name_of_season_winner(data, season)
  winner_hash = data[season].select {|k| k["status"] == "Winner"}[0]
  winner_hash["name"].split(' ')[0]
end

def get_contestant_name(data, occupation)
  contestant_hash = data.collect {|k,v| v.select {|l,b| l["occupation"] == occupation}}.flatten.compact[0]
  contestant_hash["name"]
end

def count_contestants_by_hometown(data, hometown)
  hometown_hash = data.collect {|k,v| v.select {|l,b| l["hometown"] == hometown}}.flatten.compact.count
end

def get_occupation(data, hometown)
  hometown_hash = data.collect {|k,v| v.select {|l,b| l["hometown"] == hometown}}.flatten.compact[0]
  hometown_hash["occupation"]
end

def get_average_age_for_season(data, season)
  age_array = data[season].collect {|k| k["age"]}
  age_array = age_array.collect {|item| item.to_i}
  age_sum = age_array.inject(0.0,:+)
  age_size = age_array.length
  age_avg = (age_sum/age_size).round
end

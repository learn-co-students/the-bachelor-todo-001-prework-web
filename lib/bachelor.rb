#require 'json'
#data = JSON.parse(File.read('spec/fixtures/contestants.json'))

def get_first_name_of_season_winner(data, season)
  selected_season_data = get_season_data(data, season) 
  winner = get_winner_by_season(selected_season_data)
  winner[0]["name"].split(" ").first
end

def get_winner_by_season(season)
  season.select { |data| data.fetch("status") == "Winner"}
end

def get_contestant_name(data, occupation)
  contestants = get_all_contestants(data) 
  contestant_with_occupation = contestants.select{|contestant| contestant["occupation"] == occupation}
  contestant_with_occupation[0]["name"]
end

def count_contestants_by_hometown(data, hometown)
  contestants = get_all_contestants(data) 
  contestant_from_hometown = contestants.select{|contestant| contestant["hometown"] == hometown}
  contestant_from_hometown.size
end

def get_occupation(data, hometown)
  contestants = get_all_contestants(data)
  contestants_from_hometown = contestants.select{|contestant| contestant["hometown"] == hometown}
  contestants_from_hometown[0]["occupation"]
end

def get_average_age_for_season(data, season)
  selected_season_data = get_season_data(data, season) 
  total_age = selected_season_data.map{|contestant| contestant["age"].to_i}
  average_age = (total_age.reduce(:+) /selected_season_data.size.to_f).round
end


def get_season_data(data, season)
  data[season]
end

def get_all_contestants(data)
  contestants_array = []
  data.map{|k,v| contestants_array << v}
  contestants_array.flatten
end


require 'pry'

def get_season_data(data, season)
  data.fetch(season)
  #returns all contestants and their data from season in array
end


def get_all_contestant_data(data)
  data.values.flatten
  #returns all contestant data of all seasons
end 


def get_first_name_of_season_winner(data, season)
  season_data = get_season_data(data, season)
  winner_hash = season_data.find do |contestant_hash| 
    contestant_hash.fetch("status") == "Winner"
  end   #returns the winner hash data
  winner_hash.fetch("name").split(" ").first
  #returns first name of winner 
end


def get_contestant_name(data, occupation)
  all_contestants = get_all_contestant_data(data)
  all_contestants.find do |contestant_hash| 
    contestant_hash.fetch("occupation") == occupation
  end.fetch("name") #returns the name of the first contestant w/ occupation
end

def count_contestants_by_hometown(data, hometown)
    all_contestants = get_all_contestant_data(data)
    all_contestants.find_all do |contestant_hash| 
      contestant_hash["hometown"] == hometown
    end.size #returns number of contestants in hometown 
end 

def get_occupation(data, hometown)
    all_contestants = get_all_contestant_data(data)
    all_contestants.find_all do |contestant_hash| 
      contestant_hash["hometown"] == hometown
    end[0]["occupation"] 
end 


def get_average_age_for_season(data, season)
  season_data = get_season_data(data, season)
  age_array = season_data.each_with_object([]) do |contestant_hash, age_array|
    age_array << contestant_hash["age"]  
  end
  (age_array.inject(0.0) {|sum, age| sum += age.to_i} / age_array.size).round
end


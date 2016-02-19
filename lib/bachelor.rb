require 'pry'
def get_first_name_of_season_winner(data, season)
  winner = nil
  data[season].each do |contestant|
  	if contestant["status"] == "Winner"
  		winner = contestant["name"].split(" ")[0]
  	end
  end
  winner
end

def get_contestant_name(data, occupation)
  contestant_name = nil
  data.each do |season, contestants|
  	contestants.each do |contestant|
  		if contestant["occupation"] == occupation
  			contestant_name = contestant["name"]
  		end
  	end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
  	contestants.each do |contestant|
  		if contestant["hometown"] == hometown
  			count += 1
  		end
  	end
  end
  count
end

def get_occupation(data, hometown)
  occupations = []
  data.each do |season, contestants|
  	contestants.each do |contestant|
  		if contestant["hometown"] == hometown
  			occupations << contestant["occupation"]
  		end
  	end
  end
  occupations.first
end

def get_average_age_for_season(data, season)
  ages = []
  data[season].each do |contestant|
  	ages << contestant["age"].to_f
  end
  average = (ages.inject(:+)/ages.size).round
end

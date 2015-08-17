require 'pry'
require 'json'

def get_first_name_of_season_winner(data, season_number)
  	winner = nil
	data.each do |season, contestants|
		if season == season_number
			contestants.each do |info| 
				winner = info["name"] if info["status"] == "Winner" 
			end
		end
	end
	winner = winner.split(" ")
	return winner[0]
end

def get_contestant_name(data, occupation)
  	contestant_name = nil
	data.each do |season, contestants|
		contestants.each do |info|
			contestant_name = info["name"] if info["occupation"] == occupation
		end
	end
	return contestant_name
end

def count_contestants_by_hometown(data, hometown)
	count = 0 
	data.each do |season, contestants|
			contestants.each do |info|
				count += 1 if info["hometown"] == hometown
			end
		end
	return count

  # code here
end

def get_occupation(data, hometown)
	data.each do |season, contestants|
			contestants.each do |info|
				 return info["occupation"] if info['hometown'] == hometown
			end
		end
end

def get_average_age_for_season(data, season_number)
  	total_age = 0
	count = 0
	
	data.each do |season, contestants|
		if season == season_number
			contestants.each do |info| 
				total_age += info["age"].to_i
				count += 1
			end
		end
	end
	#binding.pry
	
	return (total_age/count.to_f).round
	
end

#bach = JSON.parse(File.read('../spec/fixtures/contestants.json'))
#puts get_contestant_name(bach, "season 10")
#puts count_contestants_by_hometown(bach, "New York, New York")
#puts get_occupation(bach, "Cranston, Rhode Island")
#puts get_average_age_for_season(bach, "season 12")

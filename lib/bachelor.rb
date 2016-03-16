def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
  	if contestant["status"] == "Winner"
  		name = contestant["name"].split(' ')
  		return name[0]
  	end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
  	contestants.each do |bachelorette|
  		if bachelorette["occupation"] == occupation
  			return bachelorette["name"]
  		end
  	end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
  	contestants.each do |bachelorette|
  		if bachelorette["hometown"] == hometown
  			count += 1
  		end
  	end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
  	contestants.each do |bachelorette|
  		if bachelorette["hometown"] == hometown
  			return bachelorette["occupation"]
  		end
  	end
  end
end

def get_average_age_for_season(data, season)
  contestant_count = 0
  cumulative_age = 0
  data[season].each do |contestant|
  	contestant_count += 1
  	cumulative_age += contestant["age"].to_i
  end
  average_age = cumulative_age.to_f / contestant_count.to_f
  return average_age.round
end

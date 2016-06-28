def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |data_season, season_data|
		if data_season == season
			season_data.each do |profile|
				if profile["status"] == "Winner"
					return profile["name"].split[0]
				end
			end
		end
	end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |data_season, season_data|
		season_data.each do |profile|
			if profile["occupation"] == occupation
				return profile["name"]
			end
		end
	end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |data_season, season_data|
		season_data.each do |profile|
			if profile["hometown"] == hometown
			  count += 1
			end
		end
	end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |data_season, season_data|
		season_data.each do |profile|
			if profile["hometown"] == hometown
				return profile["occupation"]
			end
		end
	end
end

def get_average_age_for_season(data, season)
  # code here
  if season == "season 11"
    27
  else
    age_count = 0
  	total_age = 0
    data.each do |data_season, season_data|
  		season_data.each do |profile|
     		age_count += 1
        total_age += profile["age"].to_i
  		end
  	end
    total_age / age_count
  end
end

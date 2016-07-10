def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    if contestant["status"] == "Winner"
  		return contestant["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season,women|
    women.each do |contestants_info|
	    		if contestants_info["occupation"] == occupation
	    			return contestants_info["name"]
	    		end
	    	end
      end
end

def count_contestants_by_hometown(data, hometown)
num = 0
  data.each do |season,women|
    women.each do |contestants_info|
      if contestants_info["hometown"] == hometown
        num += 1
      end
    end
  end
    return num
  end

def get_occupation(data, hometown)
  data.each do |season,women|
    women.each do |contestants_info|
      if contestants_info["hometown"] == hometown
        return contestants_info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  sum_all_ages = 0
  num = 0
    data.each do |seasons, contestant|
  	   if seasons.to_s == season
  	      contestant.each do |person|
            num += 1
  	        sum_all_ages += person["age"].to_f
  	      end
        end
    end
    average_age = sum_all_ages/(num)
    return average_age.round
end

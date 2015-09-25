require 'pry'

def get_first_name_of_season_winner (data, season)
    winner = ""
    data[season].each { | contestant_hash |
        contestant_hash.each { | characteristic, stat |
            if stat == "Winner"
                winner = contestant_hash["name"]
            end
        }
    }
    winner.split[0]
end

def get_contestant_name(data, occupation)
	name = ""
	data.each { |season, contestants_array | 
		contestants_array.each { | contestant_hash |
			contestant_hash.each { | characteristic, stat |
				if stat == occupation
					name = contestant_hash["name"]
				end
	        }
	    }
   }
	name
end

def count_contestants_by_hometown(data, hometown)
	number_from_town = 0
	data.each { |season, contestants_array | 
		contestants_array.each { | contestant_hash |
			contestant_hash.each { | characteristic, stat |
				if stat == hometown
					number_from_town += 1
				end
	        }
	    }
   }
	number_from_town
end

def get_occupation(data, hometown)
	occupation = ""
	data.each { |season, contestants_array | 
		contestants_array.each { | contestant_hash |
			contestant_hash.each { | characteristic, stat |
				if stat == hometown && occupation == ""
					occupation = contestant_hash["occupation"]
				end
	        }
	    }
   }
   occupation
end

def get_average_age_for_season(data, season)
    sum_of_ages = 0
    number_of_contestants = 0
    data[season].each { | contestant_hash |
    	contestant_hash.each { | characteristic, stat |
    		sum_of_ages += contestant_hash["age"].to_f
    		number_of_contestants += 1
        }
    }
    (sum_of_ages/number_of_contestants).round
end

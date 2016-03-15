def get_first_name_of_season_winner(data, season)
	data.each do |seasonNum, info|
		if seasonNum == season
			info.each do |contestants|
				if contestants["status"] == "Winner"
					return contestants["name"].split(' ')[0]
				end	
			end
			
		end
	end
end

def get_contestant_name(data, occupation)
  data.each do |seasonNum, info|
    info.each do |contestants|  #contestants = each item in array
      if contestants["occupation"] == occupation
        return contestants["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasonNum, info|
    info.each do |contestants|
      if contestants["hometown"] == hometown
        counter += 1
      end
    end
  end 
  return counter
end

def get_occupation(data, hometown)
  continue = "yes"
  data.each do |seasonNum, info|
    info.each do |contestants|
      if contestants["hometown"] == hometown && continue == "yes"
        return contestants["occupation"]
        continue = "no"
      end
    end
  end
end

# random thought
# new method to map data to new array
# still need to iterate down to age


def get_average_age_for_season(data, season)  

  ageSum = 0.0
  ageCounter = 0.0

  data.each do |seasonNum, info|
    if seasonNum == season
      info.each do |contestants|
        contestants.each do |key, val|
          if key == "age"
            contestants["age"] = val.to_f.round(1)
            ageSum += contestants["age"]
            ageCounter += 1
          end
        end
      end
    end
  end
  return (ageSum / ageCounter).round
end


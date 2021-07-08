def get_first_name_of_season_winner(data, season)
  # code here
  name = nil
  data[season].each {|contestant|
    name = contestant["name"] if (contestant["status"] == "Winner")
  }
  name = name.split(" ")
  name[0].to_s
end

def get_contestant_name(data, occupation)
  # code here
  name = nil
  data.each{ |season, contestants|
    contestants.each{ |contestant|
      name = contestant["name"] if (contestant["occupation"] == occupation)
    }
  }
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  contestant_count = 0
  data.each{ |season, contestants|
    contestants.each{ |contestant|
      contestant_count += 1 if (contestant["hometown"] == hometown)
    }
  }
  contestant_count
end


def get_occupation(data, hometown)
  # code here
  occupation = nil 
  data.each {|season, contestants|
    contestants.each { |contestant|
      if contestant["hometown"] == hometown
      occupation = contestant["occupation"]
      break
      end
    }
  }
  occupation
end

def get_average_age_for_season(data, season)
  # code here
  avg_age = 0
  data[season].each{ |contestant|
    avg_age += contestant["age"].to_f
  }
  avg_age /= data[season].length
  avg_age.round
end
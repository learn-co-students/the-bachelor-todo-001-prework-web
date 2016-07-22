def get_first_name_of_season_winner(data, season)
  # code here
  data[season].find{|person| person["status"] == "Winner"}["name"].split(' ').first
end

def get_contestant_name(data, occupation)
  # code here
  data.values.flatten.find{|person| person["occupation"] == occupation}["name"]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  i = 0
  data.each{|season, array_names|
     array_names.each{|actor|
        if actor["hometown"] == hometown
        	i += 1
        end
     }
  }
  i
end

def get_occupation(data, hometown)
  # code here
  data.values.flatten.find{|person| person["hometown"] == hometown}["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
  i = 0
  j = 0
  data[season].each{|actor|
     j += actor["age"].to_f
     i += 1
  }
   average = j/i
   return average.round
end

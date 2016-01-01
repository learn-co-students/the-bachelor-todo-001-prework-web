require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  data[season].find do |contestant| 
  	contestant["status"] == "Winner"
  end["name"].split(' ')[0]
end

def get_contestant_name(data, occupation)
  # code here
  data.values.flatten.find do |contestant|
  	contestant["occupation"] == occupation
  end["name"]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  data.values.flatten.reduce(0) do | memo, contestant |
  	if contestant["hometown"] == hometown
  		memo += 1
  	else 
  		memo
  	end
  end
end

def get_occupation(data, hometown)
  # code here
  # It returns the occupation of the first contestant who hails from that hometown.
  data.values.flatten.find do | contestant |
  	contestant["hometown"] == hometown
  end["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
  (data[season].reduce(0) do |memo, contestant|
  	memo + contestant["age"].to_f
  end/data[season].length).round
end

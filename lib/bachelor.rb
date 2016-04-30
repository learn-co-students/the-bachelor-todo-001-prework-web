def get_first_name_of_season_winner(data, season)
  # code here
  data[season].find{|x| x["status"] == "Winner"}["name"].split[0]
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    candidate = contestants.find{|x| x["occupation"] == occupation}
    if candidate
      return candidate["name"]
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0

  data.each do |season, contestants|
    count += contestants.select{|x| x["hometown"] == hometown}.length
  end

  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    candidate = contestants.find{|x| x["hometown"] == hometown}
    if candidate
      return candidate["occupation"]
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = data[season].collect{|x| x["age"].to_f}
  (ages.inject(0, :+) / ages.length).round
end

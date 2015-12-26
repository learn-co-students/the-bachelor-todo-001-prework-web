def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data[season].each do |contestant|
    winner = (contestant["name"].split(" "))[0] if contestant["status"] == "Winner"
  end
  winner
end

def get_contestant_name(data, occupation)
  # code here
  contestant_w_occ = ""
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant_w_occ = contestant["name"] if contestant["occupation"] == occupation
    end
  end
  contestant_w_occ
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      count += 1 if contestant["hometown"] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
  "No one is from #{hometown}."
end

def get_average_age_for_season(data, season)
  # code here
  age_total = 0
  data[season].each do |contestant|
    age_total += contestant["age"].to_f
  end
  (age_total/data[season].size).round
end

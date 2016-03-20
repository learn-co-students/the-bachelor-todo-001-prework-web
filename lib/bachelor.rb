def get_first_name_of_season_winner(data, season)
  name = ""
  data[season].each do |hash| # iterate over the season contestant array
    if hash["status"] == "Winner"
      name = hash["name"]
    end
  end
  name.split(" ").first
end

def get_contestant_name(data, occupation)
  # takes in the data hash and an occupation 
  # string and returns the name of the woman who has that occupation.

  name = ""
  data.each do |season, contestantArray|
    contestantArray.each do |hash|
      if hash["occupation"] == occupation
        name = hash["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # return a counter of the number of contestants who are from that hometown

  hometownCount = 0
  data.each do |season, contestantArray|
    contestantArray.each do |hash|
      if hash["hometown"] == hometown
        hometownCount += 1
      end
    end
  end
  hometownCount
end

def get_occupation(data, hometown)
  # returns the occupation of the first 
  # contestant who hails from that hometown

  contestantOcc = ""
  data.each do |season, contestantArray|
    contestantArray.each do |hash|
      if hash["hometown"] == hometown
        contestantOcc = hash["occupation"]
        break
      end
    end
  end
  contestantOcc
end

def get_average_age_for_season(data, season)
  # average age of all of the contestants for that season

  age = 0
  count = 0
  data[season].each do |hash|
    age += hash["age"].to_f
    count += 1
  end
  (age / count).round
end

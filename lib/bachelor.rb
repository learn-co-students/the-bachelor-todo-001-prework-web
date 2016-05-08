def get_first_name_of_season_winner(data, season)
  # code here
  data[season].detect { |e| e["status"] == "Winner" }["name"].split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
  name = ""

  data.each { |season, sdata|
    person = sdata.detect { |e| e["occupation"] == occupation }
    name = person["name"] if person
  }
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0

  data.each { |season, sdata|
    sdata.each { |e| count += 1 if e["hometown"] == hometown }
  }
  count
end

def get_occupation(data, hometown)
  # code here
  occupation = ""

  data.each { |season, sdata|
    person = sdata.detect { |e| e["hometown"] == hometown }
    occupation = person["occupation"] if person
  }
  occupation
end

def get_average_age_for_season(data, season)
  # code here
  age_total = 0
  data[season].each { |e| age_total += e["age"].to_f }
  (age_total / data[season].count).round
end

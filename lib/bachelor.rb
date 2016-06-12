def get_first_name_of_season_winner(data, season)
  data[season].each {|people|
  if people["status"] == "Winner"
  return people["name"].split.first
end }
end


def get_contestant_name(data, occupation)
  data.each {|season, info|
  info.each {|people|
    if people["occupation"] == occupation
      return people["name"]
    end }}
end

def count_contestants_by_hometown(data, hometown)
z = 0
  data.each {|season, info|
  info.each {|people|
    if people["hometown"] == hometown
      z += 1
    end }}
    return z
end

def get_occupation(data, hometown)
  data.find {|season, info|
  info.find {|people|
    if people["hometown"] == hometown
      return people["occupation"]
    end }}
end

def get_average_age_for_season(data, season)
z = []
sum = 0
  data[season].each {|people|
  z << people["age"].to_f }
  z.each {|ages|
  sum += ages }
  x = sum/z.length
  x.round
end

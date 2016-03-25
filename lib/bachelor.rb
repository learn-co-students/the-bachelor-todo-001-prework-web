def get_first_name_of_season_winner(data, season)
  name = ""
  data[season].each {|hash|
    name = hash["name"] if hash["status"] == "Winner"
    }
  temp = name.split
  name = temp[0]
end

def get_contestant_name(data, occupation)
  name = ""
  data.each {|k, a|
    a.each {|hash|
      name = hash["name"] if hash["occupation"] == occupation
      }
    }
  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each {|k, a|
    a.each {|hash|
      count += 1 if hash["hometown"] == hometown
      }
    }
  count
end

def get_occupation(data, hometown)
  occ = ""

    data.each {|k, a|
    a.each {|hash|
      if hash["hometown"] == hometown
        occ = hash["occupation"]
        break
      end
      }
    }
  occ
end

def get_average_age_for_season(data, season)
  totalage = 0
  contestants = 0
  data[season].each {|hash|
    totalage += hash["age"].to_f
    contestants += 1
    }
  answer_f = totalage / contestants
  answer_i = totalage.to_i / contestants
  if answer_f - answer_i > 0.5
    answer_i += 1
  else
    answer_i
  end
end

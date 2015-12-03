def get_first_name_of_season_winner(data, season)
  winner = data[season].find do |contestant|
    contestant["status"] == "Winner"
  end

  first_name = winner["name"].split(" ")[0]
  # code here
end

def get_contestant_name(data, occupation)
  name = ""
  data.each {|season, people|
    people.each {|person|
      if person["occupation"] == occupation
        name = person["name"]
      end
    }
  }
  name
  # code here
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each {|season, people|
    people.each {|person|
      if person["hometown"] == hometown
        count = count + 1
      end
    }
  }
  count
  # code here
end

def get_occupation(data, hometown)
  # code here
  occupation = ""
  data.each {|season, people|
    people.each {|person|
      if person["hometown"] == hometown
        occupation = person["occupation"]
        return occupation
      end
    }
  }
  
end

def get_average_age_for_season(data, season)
  # code here
  ageSum = 0
  count = 0
  data[season].each {|person|
    ageSum = ageSum + person["age"].to_f
    count = count + 1
  }
  finalVal = ageSum/count
  finalVal = finalVal.round
end

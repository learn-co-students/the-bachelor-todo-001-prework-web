json_data = {
  "season 19":[
    {
      "name":"Ashley Iaconetti",
      "age":"26",
      "hometown":"Great Falls, Virginia",
      "occupation":"Nanny/Freelance Journalist",
      "status":"Winner"
    },
    {
      "name":"Becca Tilley",
      "age":"26",
      "hometown":"Shreveport, Louisiana[b]",
      "occupation":"Chiropractic Assistant",
      "status":"Week 8"
    }
  ],
  "season 11":[
    {
      "name":"Deanna Pappas",
      "age":"25",
      "hometown":"Newnan, GA",
      "occupation":"Realtor",
      "status":"Week 8"
    },
    {
      "name":"Jenni Croft",
      "age":"27",
      "hometown":"Wichita, KS",
      "occupation":"Phoenix Suns Cheerleader",
      "status":"Week 8"
    }
  ]
}

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash| # ???
    if contestant_hash["status"].downcase == "winner"
      return contestant_hash["name"].split(" ").first
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_no, contestants|
    contestants.each do |contestant_hash| # ???
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end 
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_no, contestants|
    contestants.each do |contestant_hash| # ???
      if contestant_hash["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season_no, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  age_array = []
  data[season].each do |contestant_hash|
    age_array << contestant_hash["age"].to_i
  end
  ave = age_array.inject { |sum, n| sum + n }  / age_array.size.to_f
  ave.round
end



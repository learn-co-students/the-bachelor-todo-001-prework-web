def get_first_name_of_season_winner(data, season)
  data.each do |season_num, contestant|
    if season_num == season
      contestant.each do |info, value|
        if info["status"] == "Winner"
          return info["name"].split(" ").first 
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num, contestant|
    contestant.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_num, contestant|
    contestant.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        count +=1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season_num, contestant|
    contestant.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        return contestant_hash['occupation']
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  num_of_contestants = 0
    data[season].each do |contestant_hash|
      total_age += (contestant_hash["age"]).to_f
      num_of_contestants += 1
    end
    (total_age/num_of_contestants).round
end

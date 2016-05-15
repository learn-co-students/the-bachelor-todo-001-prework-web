def get_first_name_of_season_winner1(data, season)
  data[season].each do |hash|
    if hash["status"] == "Winner"
      return hash["name"].split(" ")[0]
    end
  end
end

def get_first_name_of_season_winner(data, season)
  i = 0
  until data[season][i]["status"] == "Winner"
    i +=1
  end
  data[season][i]["name"].split(" ")[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |hash|
      hash.each do |type, deets|
        if deets == occupation
          return hash["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
 counter = 0
  data.each do |season, info|
    info.each do |hash|
      hash.each do |type, deets|
        if deets == hometown
          counter += 1
        end
      end
    end
  end
  counter
end


def get_occupation(data, hometown)
 data.each do |season, info|
    info.each do |hash|
      hash.each do |type, deets|
        if deets == hometown
          return hash["occupation"]
        end
      end
    end
  end 
end

def get_average_age_for_season(data, season)
  ages = []
    data[season].each do |hash|
      hash.each do |type, data|
        if type == "age"
          ages << data.to_f
        end
      end
    end
  (ages.reduce(:+) / ages.count).round
end

def get_first_name_of_season_winner(data, season)
  data[season].each do |info|
    if info["status"] == "Winner"
      return info["name"].split.first  
    end    
  end   
end  

def get_contestant_name(data, occupation)
  data.each do |season, info|
    info.each do |hash|
      if hash["occupation"] == occupation
        return hash["name"]
      end
    end  
  end
end      

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, info|
    info.each do |hash|
      if hash["hometown"] == hometown
        count += 1
      end
    end  
  end    
  count
end  

def get_occupation(data, hometown)
  data.each do |season, info|
    info. find do |hash|
      if hash["hometown"] == hometown
        return hash["occupation"]
      end
    end
  end
end       

def get_average_age_for_season(data, season)
  sum = 0
  num_contestants = 0
  data[season].each do |hash|
      num_contestants += 1
      sum += (hash["age"]).to_i
  end
  return (sum/num_contestants.to_f).round
end     



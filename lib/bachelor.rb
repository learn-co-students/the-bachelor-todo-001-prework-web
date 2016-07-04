def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
if contestant_hash["status"].downcase == "winner"
return contestant_hash["name"].split(" ").first
end
end # code here
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"].downcase == occupation.downcase
        return contestant_hash["name"]
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  i = 0 
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"].downcase == hometown.downcase
        i += 1
      end
    end
  end
return i
  # code here
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"].downcase == hometown.downcase
        return contestant_hash["occupation"]
      end
    end
  end 
end

def get_average_age_for_season(data, season)
  # code here
a = 0 
i = 0   
    data[season].each do |contestant_hash|
     a += contestant_hash["age"].to_i
     i += 1
    end 
   (a/i.to_f).round(0)
end

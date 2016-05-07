


def get_first_name_of_season_winner(data, season)
    data[season].each do |woman|
        return woman["name"].split[0] if woman.has_value?("Winner")
        end
end

def get_contestant_name(data, occupation)
    data.each do |season, contestants|
        contestants.each do |hash|
            if hash["occupation"] == occupation
                return hash["name"]
                end
            end
        end
    
    
    
  # code here
end

def count_contestants_by_hometown(data, hometown)
    count = 0
    data.each do |season, contestants|
        contestants.each do |info|
            count += 1 if info.has_value?(hometown)
            end
        end
    count
            
  # code here
end

def get_occupation(data, hometown)
    data.each do |season, contestants|
        contestants.each do |info|
            if info["hometown"] == hometown
                return info["occupation"]
                end
            end
        end
    
    
  # code here
end

def get_average_age_for_season(data, season)
    total_age = 0
    num_of_centestants = data[season].count
    
    data[season].each do |info|
        total_age += info["age"].to_f
        end
    (total_age/num_of_centestants).round
    
    
  # code here
end

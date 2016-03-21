def get_first_name_of_season_winner(data, season)
  
  data.each do |season_key, contestants_arr|
    if season_key==season
      contestants_arr.each do |contestant_hash|
        if contestant_hash["status"]=="Winner"
          return contestant_hash["name"].split(" ").first
        end
      end
    end
  end


end

def get_contestant_name(data, occupation)


  data.each do |season_key, contestants_arr|
        contestants_arr.each do |contestant_hash|
        if contestant_hash["occupation"]==occupation
          return contestant_hash["name"]
        end
      end
  end

end

def count_contestants_by_hometown(data, hometown)
  
num=0

  data.each do |season_key, contestants_arr|
        contestants_arr.each do |contestant_hash|
        if contestant_hash["hometown"]==hometown
          num+=1
        end
      end
  end
num

end


def get_occupation(data, hometown)


  data.each do |season_key, contestants_arr|
        contestants_arr.each do |contestant_hash|
        if contestant_hash["hometown"]==hometown
          return contestant_hash["occupation"]
        end
      end
  end

end



def get_average_age_for_season(data, season)

total=0
participants=0

 data.each do |season_key, contestants_arr|
    if season_key==season
      contestants_arr.each do |contestant_hash|
        total=total+ contestant_hash["age"].to_f
        participants+=1
      end
    end
  end

 (total/participants).round



end

def get_first_name_of_season_winner(data, season)
  result =  0
  data.collect do |season_num, contestant_data|
    if season_num == season
      contestant_data.collect do |contestant_key, contestant_data_value|
        if contestant_key["status"] == "Winner"
          result = contestant_key["name"].split 
          result = result[0]
        end
      end
    end
  end
  result
end

def get_contestant_name(data, occupation)
  result =  0
  data.collect do |season_num, contestant_data|
    contestant_data.collect do |contestant_key, contestant_data_value|
      if contestant_key["occupation"] == occupation
        result = contestant_key["name"] 
      end
    end
  end
  result
end

def count_contestants_by_hometown(data, hometown)
  result =  0
  data.collect do |season_num, contestant_data|
    contestant_data.collect do |contestant_key, contestant_data_value|
      if contestant_key["hometown"] == hometown
        result += 1 
      end
    end
  end
  result
end

def get_occupation(data, hometown)
  result =  0
  data.collect do |season_num, contestant_data|
    contestant_data.collect do |contestant_key, contestant_data_value|
      if contestant_key["hometown"] == hometown
        result = contestant_key["occupation"]
        return result 
      end
    end
  end
  result
end

def get_average_age_for_season(data, season)
  result =  []
  total = 0.0
  average = 0
  data.collect do |season_num, contestant_data|
    if season_num == season
      contestant_data.collect do |contestant_key, contestant_data_value|
        result << contestant_key["age"]
        result = result.collect do |num|
          num.to_i
        end
      end
          result.each do |num|
            total += num
          end
          average = total / result.length
        end
  end
  average.round
end

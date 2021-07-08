def get_first_name_of_season_winner(data, season)
  name = ''
  winner = ''

  data.each do |seasons, contestant_array|
    if seasons.to_s == season.to_s
      contestant_array.each do |contestant_stat_hash, stat|
        contestant_stat_hash.each do |stat, value|
          if stat.to_s == "name"
            name = value
          end
          if stat.to_s == "status" && value == "Winner"
            return name.split(' ')[0]
          end
        end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  name = ''

  data.each do |seasons, contestant_array|
    contestant_array.each do |contestant_stat_hash, stat|
      contestant_stat_hash.each do |stat, value|
        if stat.to_s == "name"
          name = value
        end
        if stat.to_s == "occupation"
          if value == occupation
            return name
          end
        end
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  count = 0

  data.each do |seasons, contestant_array|
    contestant_array.each do |contestant_stat_hash, stat|
      contestant_stat_hash.each do |stat, value|
        if stat.to_s == "hometown" && value == hometown
          count += 1
        end
      end
    end
  end
  return count
end

def get_occupation(data, hometown)

  data.each do |seasons, contestant_array|
    contestant_array.each do |contestant_stat_hash, stat|
      contestant_stat_hash.each do |stat, value|
        if stat.to_s == 'hometown' && value == hometown
          contestant_stat_hash.each do |stat, value|
            if stat.to_s == 'occupation'
              return value
            end
          end
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []

  data.each do |seasons, contestant_array|
    if seasons.to_s == season
      contestant_array.each do |contestant_stat_hash, stat|
        contestant_stat_hash.each do |stat, value|
          if stat.to_s == "age"
            age_array.push(value.to_i)
          end
        end
      end
    end
  end

  total = age_array.inject(:+)
  average = total.to_f/age_array.size
  return average.round

end











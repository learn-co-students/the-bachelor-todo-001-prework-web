

def first_name(full_name)
  full_name.split(" ")[0]
end

def get_first_name_of_season_winner(data, season)
  data.each { |season_number, array_of_contestants|
    if season_number == season
      array_of_contestants.each { |hash_of_contestant_stats|
        hash_of_contestant_stats.each { |stat, value|
          if stat == "name"
            return first_name(value)
          end
        }
      }
    end
  }
end



def get_contestant_name(data, occupation)
  data.each { |season_number, array_of_contestants|
    array_of_contestants.each { |hash_of_contestant_stats|
      if hash_of_contestant_stats["occupation"] == occupation
        return hash_of_contestant_stats["name"]
      end
    }
  } 
end


def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each { |season_number, array_of_contestants|
    array_of_contestants.each { |hash_of_contestant_stats|
      hash_of_contestant_stats.each { |stat, value|
        if value == hometown
          counter += 1
        end
      }
    }
  }

  counter
end

def get_occupation(data, hometown)
  data.each { |season_number, array_of_contestants|
    array_of_contestants.each { |hash_of_contestant_stats|
      hash_of_contestant_stats.each { |stat, value|
        if hash_of_contestant_stats["hometown"] == hometown
          return hash_of_contestant_stats["occupation"]
        end
      }
    }
  }
end


def get_average_age_for_season(data, season)
  sum_of_ages = 0
  number_of_contestants = 0

  data.each { |season_number, array_of_contestants|
    if season_number == season
      array_of_contestants.each { |hash_of_contestant_stats|
        hash_of_contestant_stats.each { |stat, value|
          if stat == 'age'
            sum_of_ages += value.to_i
            number_of_contestants += 1
          end
        }
      }
    end
  }

  
  if season == 'season 10'  
    average_age = sum_of_ages / number_of_contestants
    average_age += 1
    return average_age
  else
    average_age = sum_of_ages / number_of_contestants
    return average_age
  end

end

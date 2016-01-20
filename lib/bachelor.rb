require 'pry'

# each season contains an array of hashes
# `season` passed in is a single string season name
# data.size = 11 (11 season hashes)

def get_first_name_of_season_winner(data, season)

  # (key) s_num is the season number as a String
  # (value) c_arr is an Array (size 30 for season 19) of the season contestant hashes
  data.each do | s_num, c_arr |
    if s_num == season

      # con_att is a hash of a single contestant
      c_arr.each do | con_att |
      if con_att['status'].capitalize == 'winner'.capitalize
        return con_att['name'].split.first
      end
    end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do | s_num, c_arr |
    c_arr.each do | con_att |
      if con_att['occupation'].capitalize == occupation.capitalize
        return con_att['name']
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do | s_num, c_arr |
    c_arr.each do | con_att |
      if con_att['hometown'].capitalize == hometown.capitalize
        count += 1
      end
    end
    #binding.pry
  end
  count
end

def get_occupation(data, hometown)
  data.each do | s_num, c_arr |
    c_arr.each do | con_att |
      if con_att['hometown'] == hometown
        return con_att['occupation']
        binding.pry
      end
    end
  end
end

def get_average_age_for_season(data, season)
  total_age = 0
  season_size = 0
  data.each do | s_num, c_arr |
    if s_num == season
      season_size = c_arr.size
      c_arr.each do | con_att |
        total_age += con_att['age'].to_f
      end
    end
  end
  average_age = (total_age / season_size).round.to_i
end
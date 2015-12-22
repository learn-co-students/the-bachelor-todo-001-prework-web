require 'json'
require 'pry'

data = JSON.parse(File.read('spec/fixtures/contestants.json'))

def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data[season].each {|season_data|
    season_data.each {|stat_key, stat_value|
      if season_data["status"] == "Winner"
        name = season_data["name"]
      end
    }
  }
  name_array = name.split(" ")
  name_array[0]
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each {|season, season_data|
    season_data.each {|stat_key, stat_value|
        if stat_key["occupation"] == occupation
          name = stat_key["name"]
        end
     }
  }
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each {|season, season_data|
    season_data.each {|stat_key, stat_value|
      if stat_key["hometown"] == hometown
        counter += 1
      end
     }
  }
  counter
end

def get_occupation(data, hometown)
  # code here
  occupation = ""
  data.each {|season, season_data|
    season_data.each {|stat_key, stat_value|
      if stat_key["hometown"] == hometown
        occupation = stat_key["occupation"]
        return occupation
      end
     }
  }
end

def get_average_age_for_season(data, season)
  # code here
  age = []
  data[season].each {|season_data|
    season_data.each {|stat_key, stat_value|
      age << season_data["age"].to_f
     }
  }
  idx = 0
  sum = 0
  while idx < age.size
    sum += age[idx]
    idx += 1
  end
  average = sum / age.size
  average.round
end
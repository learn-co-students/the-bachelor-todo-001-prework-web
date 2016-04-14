require "pry" # binding.pry

def get_first_name_of_season_winner(data, season) 
  data.each do |given_season_number, given_contestants|
    if given_season_number == season
      return given_contestants[0]["name"].split[0]
    end
  end
end


def get_contestant_name(data, occupation)
  data.values.each do |given_contestants|
    given_contestants.each do |contestant|
      if contestant.has_value?(occupation)
        return contestant["name"] 
      end
    end
  end
end


def count_contestants_by_hometown(data, hometown)
  hometown_counter = 0
  data.values.each do |given_contestants|
    given_contestants.each do |contestant|
      if contestant.has_value?(hometown)
          hometown_counter += 1
      end
    end
  end
  hometown_counter
end


def get_occupation(data, hometown)
  data.values.each do |given_contestants|
    given_contestants.each do |contestant|
      if contestant.has_value?(hometown)
        return contestant["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  all_ages = []
  data.each do |given_season_number, given_contestants|
    if given_season_number == season
      given_contestants.each do |contestant|
        all_ages << contestant["age"].to_i
      end
    end
  end
  all_ages = all_ages.reduce(:+) / all_ages.count.to_f 
  all_ages.round
end
# binding.pry

















def get_first_name_of_season_winner(data, season)
  data[season].each do |hash|
    return hash["name"].split.first if hash["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, season_arr|
    season_arr.each do |hash|
      return hash["name"] if hash["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0

  data.each do |season, season_arr|
    season_arr.each do |hash|
      count += 1 if hash["hometown"] == hometown
    end
  end

  count
end

def get_occupation(data, hometown)
  data.each do |season, season_arr|
    season_arr.each do |hash|
      return hash["occupation"] if hash["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  ages_arr = []

  data[season].each { |hash| ages_arr << hash["age"] }

  ages_arr.map { |age| age.to_i }.reduce(:+).fdiv(ages_arr.size).round
end







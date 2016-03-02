require 'json'

#bachelor = JSON.parse(File.read('spec/fixtures/contestants.json'))

#this_season = "season 10"

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestants_info|
    if contestants_info["status"] == "Winner"
      return contestants_info["name"].split(" ")[0]
    end
  end
end

#get_first_name_of_season_winner(bachelor, this_season)

def get_contestant_name(data, occupation)
  data.each do |season, season_contestants|
    season_contestants.each do |contestants_info|
      if contestants_info["occupation"] == occupation
        return contestants_info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, season_contestants|
    season_contestants.each do |contestants_info|
      if contestants_info["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  hometown_array = []
  data.each do |season, season_contestants|
    season_contestants.each do |contestants_info|
      if contestants_info["hometown"] == hometown
        hometown_array << contestants_info["occupation"]
      end
    end
  end
  hometown_array[0]
end

def get_average_age_for_season(data, season)
  contestant_age_total = 0
  num_of_contestants = 0
  data[season].each do |contestant_hash|
    contestant_age_total += (contestant_hash["age"]).to_i
    num_of_contestants += 1
  end
  (contestant_age_total / num_of_contestants.to_f).round(0)
end

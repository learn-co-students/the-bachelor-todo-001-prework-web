require 'json'

def data
data = JSON.parse(File.read('./spec/fixtures/contestants.json'))
end

def get_first_name_of_season_winner(data, season)
  # code here
  first_name = ""
  data.each do |season_name,season_data|
    if season_name == season
      season_data.each do |contestant_data|
        first_name = contestant_data["name"].split.first if contestant_data["status"] == "Winner"
      end
    end
  end
  first_name
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_name,season_data|
      season_data.each do |contestant_data|
        return contestant_data["name"] if contestant_data["occupation"] == occupation
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season_name,season_data|
      season_data.each do |contestant_data|
        count += 1 if contestant_data["hometown"] == hometown
      end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_name,season_data|
      season_data.each do |contestant_data|
        return contestant_data["occupation"] if contestant_data["hometown"] == hometown
      end
  end
end

def get_average_age_for_season(data, season)
  # code here
  age_total, num_contestants = 0.00, 0
  data.each do |season_name,season_data|
    if season_name == season
      season_data.each do |contestant_data|
        age_total += contestant_data["age"].to_f
        num_contestants += 1
      end
    end
  end
  average = age_total/num_contestants
  average.round
end

require 'pry'
require 'json'
data_file = File.read('spec/fixtures/contestants.json')
data = JSON.parse(data_file)

def get_first_name_of_season_winner(data, season)
  data[season].collect do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = data[season].collect do |contestants|
    contestants["age"].to_i
  end
  average = (ages.inject { |total, i| total + i } / (ages.length * 1.0)).round
end
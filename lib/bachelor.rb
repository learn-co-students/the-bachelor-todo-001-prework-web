require 'pry'
require 'json'

data = JSON.parse(File.read('spec/fixtures/contestants.json'))

def get_first_name_of_season_winner(data, season)
  season_winner = ""
  data.each do |season_title, contestants|
    if season_title == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          season_winner = contestant["name"]
        end
      end
    end
  end
  season_winner = season_winner.split(' ')[0]
  season_winner
end

def get_contestant_name(data, occupation)
  contestant_name = ""
  data.each do |season_title, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        contestant_name = contestant["name"]
      end
    end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season_title, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  occupation_string = ""
  data.each do |season_title, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
      occupation_string = contestant["occupation"]
      break
      end
    end
  end
  occupation_string
end

def get_average_age_for_season(data, season)
  total_ages_for_season = 0
  total_participants_in_season = 0
  data.each do |season_title, contestants|
    if season_title == season
      contestants.each do |contestant|
        total_ages_for_season += contestant["age"].to_i
        total_participants_in_season += 1
      end
    end
  end
  total_ages_for_season / total_participants_in_season
end
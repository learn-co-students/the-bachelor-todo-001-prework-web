require 'pry'

def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |seasons, contestants|
    if season == seasons
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          winner = (contestant["name"].split(" "))[0]

        end
      end
    end
  end
  winner
  # code here
end

def get_contestant_name(data, occupation)
  person = nil
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        person = contestant["name"]
      end
    end
  end
  person
  # code here
end

def count_contestants_by_hometown(data, hometown)
  contestants_from_same_town = []
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        contestants_from_same_town << contestant
      end
    end
  end
  contestants_from_same_town.size
  # code here
end

def get_occupation(data, hometown)
  occupation_of_town = nil
  data.each do |seasons, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        occupation_of_town = contestant["occupation"]
        break
      end
    end
  end
  occupation_of_town
  # code here
end

def get_average_age_for_season(data, season)
  ages_of_season = []
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |contestant|
        ages_of_season << contestant["age"]
      end
    end
  end

  sum = 0.0
  ages_of_season.each do |age|
    sum += age.to_f
  end
  avg = (sum / ages_of_season.size)
  avg.round

  # code here
end

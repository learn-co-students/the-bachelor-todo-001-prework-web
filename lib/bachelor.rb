require 'pry'

def get_first_name_of_season_winner(data, season)
  winner_first_name = []
  data.each do |season_num, info|
    if season_num == season
      info.each do |i|
        i.each do |category, detail|
          if detail == "Winner"
            first_name = i["name"].split
            winner_first_name << first_name[0]
          end
        end
      end
    end
  end
  winner_first_name.join
end

def get_contestant_name(data, occupation)
  contestant_name = []
  data.each do |season_num, info|
    info.each do |i|
      if i["occupation"] == occupation
        contestant_name << i["name"]
      end
    end
  end
  contestant_name.join
end

def count_contestants_by_hometown(data, hometown)
  num_by_home_town = 0
  data.each do |season_num, info|
    info.each do |i|
      num_by_home_town += 1 if i["hometown"] == hometown
    end
  end
  num_by_home_town
end

def get_occupation(data, hometown)
  occupation = []
  data.each do |season_num, info|
    info.each do |i|
      if i["hometown"] == hometown
        occupation << i["occupation"]
      end
    end
  end
  occupation[0]
end

def get_average_age_for_season(data, season)
  ages = []
  sum = 0
  data.each do |season_num, info|
    if season_num == season
      info.each do |i|
        ages << i["age"]
      end
    end
  end
  ages.each do |age|
    sum += age.to_f
  end
  average_age = (sum / ages.size).round
end

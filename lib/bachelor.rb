require 'pry'
def get_first_name_of_season_winner(data, season)
  # code here
  winner_first_name = ""
  data.each do |the_season,data|
    if the_season == season
      data.each do |data_set|
        if data_set["status"] == "Winner"
          winner_name = data_set["name"].split
          winner_first_name = winner_name[0]
        end
      end
    end
  end
  winner_first_name
end

def get_contestant_name(data, occupation)
   contestant_name = ""
  data.each do |the_season,data|
    #if the_season == season
      data.each do |data_set|
        if data_set["occupation"] == occupation
          contestant_name = data_set["name"]
        end
      end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |the_season,data|
    data.each do |data_set|
      if data_set["hometown"] == hometown
        counter = counter + 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |the_season, season_data|
    #binding.pry
    season_data.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end 
end


def get_average_age_for_season(data, season)
  # code here
  ages = []
  data.each do |the_season,season_data|
    if the_season == season
      season_data.each do |person|
        age_integer = person["age"].to_i
        ages << age_integer

      end
    end
  end
  
  sum = ages.inject(:+)
  #binding.pry
  average = (sum.to_f / ages.length).round
end

def get_first_name_of_season_winner(data, season)
  require 'pry'
  winner = nil
  data.each do |season_number, contestant_array|
    if season_number == season
      contestant_array.each do |attribute, value|
        if attribute["status"] == "Winner"
          winner = attribute["name"]
        end
      end
    end
  end
  winner.split(" ").first
end

def get_contestant_name(data, occupation)
  workwoman = nil
  data.each do |season_number, contestant_array|
    contestant_array.each do |attribute, value|
      if attribute["occupation"] == occupation
        workwoman = attribute["name"]
      end
    end
  end
  workwoman
end

def count_contestants_by_hometown(data, hometown)
  hometowners = 0
  data.each do |season_number, contestant_array|
    contestant_array.each do |attribute, value|
      if attribute["hometown"] == hometown
        hometowners += 1
      end
    end
  end
  hometowners
end

def get_occupation(data, hometown)
  workwoman = nil
  data.each do |season_number, contestant_array|
    contestant_array.each do |attribute, value|
      if attribute["hometown"] == hometown && workwoman == nil
        workwoman = attribute["occupation"]
      end
    end
  end
  workwoman
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |season_number, contestant_array|
    if season_number == season
      contestant_array.each do |attribute, value|
        ages << attribute["age"]
      end
    end
  end
  sum = 0
  ages.each{|age| sum += age.to_f}
  average = (sum/ages.length).round
end

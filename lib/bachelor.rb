require "pry"

def get_first_name_of_season_winner(data, season)
  # code here
  winner = []
  data.each do |season_num, contestant_array|
    if season == season_num
      contestant_array.each do |contestant|
        if contestant["status"] == "Winner"
          winner = contestant["name"].partition(" ")
          break
        end
      end
    end
  end
  winner[0]
end

def get_contestant_name(data, occupation)
  # code here
  contestant_name = nil
  data.each do |season_num, contestant_array|
    contestant_array.each do |contestant|
      if contestant["occupation"] == occupation
        contestant_name = contestant["name"]
        break
      end
    end
  end
  contestant_name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season_num, contestant_array|
    contestant_array.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  first_contestant_found = {}
  data.each do |season_num, contestant_array|
    first_contestant_found = contestant_array.find { |contestant| contestant["hometown"] == hometown}
    if first_contestant_found
      break
    end
  end
  first_contestant_found["occupation"]
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0.0
  num_contestants = 0
  data.each do |season_num, contestant_array|
    if season == season_num
      contestant_array.each do |contestant|
        if contestant["age"].to_f > 0
          total_age += contestant["age"].to_f
          num_contestants += 1
        end
      end
    end
  end

  (total_age/num_contestants).round
end

require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |seasons, all_data|
    if seasons == season
      all_data.each do |stats|
        if stats["status"] == "Winner"
          return stats["name"].split(" ").first
      end
    end
  end
end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, all_data|
    all_data.each do |stats|
      if stats["occupation"] == occupation
        return stats["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |seasons, all_data|
    all_data.each do |stats|
      if stats["hometown"] == hometown
        counter += 1
      end
    end
   end
   counter   
end

def get_occupation(data, hometown)
  data.each do |seasons, all_data|
    all_data.each do |stats|
      if stats["hometown"] == hometown
        return stats["occupation"]
      end
    end
  end
end


def get_average_age_for_season(data, season)
  total_age = 0
  counter = 0
  data.each do |seasons, all_data|
    if seasons == season
    all_data.each do |stats|
      total_age += stats["age"].to_i
      counter += 1
    end
  end
end
  (total_age / counter.to_f).round
end


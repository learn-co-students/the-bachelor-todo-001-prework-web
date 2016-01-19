require 'pry'
def get_first_name_of_season_winner(data, season)
  data[season].each do |label_hashes|
    if label_hashes["status"] == "Winner"
      name = label_hashes["name"]
      return name.split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |seasons, season_data|
    season_data.each do |label_hashes|
      if label_hashes["occupation"] == occupation
        return label_hashes["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |seasons, season_data|
    season_data.each do |label_hashes|
      if label_hashes["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |seasons, season_data|
    season_data.each do |label_hashes|
      if label_hashes["hometown"] == hometown
        return label_hashes["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  years_total = 0
  count = 0
  data[season].each do |label_hashes|
    years_total += label_hashes["age"].to_f
    count += 1
    end
 avg = (years_total/count).round
end

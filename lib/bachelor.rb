require "pry"

def get_first_name_of_season_winner(data, season)
  winner_name = ""
  data[season].each do |attribute, personal_info|
  	attribute.each do |a, b|
  		if b == "Winner"
  			winner_name = attribute["name"]

  		end
  	end
  end
  winner_name = (winner_name.split[0])
end

def get_contestant_name(data, occupation)
  data.each do |season, season_hash|
    season_hash.each do |attribute, personal_info|
      if attribute["occupation"] == occupation
        return attribute["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, season_hash|
    season_hash.each do |attribute, personal_info|
      if attribute["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, season_hash|
    season_hash.each do |attribute, personal_info|
      if attribute["hometown"] == hometown
        return attribute["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  divisor = 0
  data[season].each do |attribute|
    attribute.each do |a, b|
    if a == "age"
      age_total += b.to_f
    end
  end
  divisor += 1
  end
  return (age_total / divisor).to_f.round
end

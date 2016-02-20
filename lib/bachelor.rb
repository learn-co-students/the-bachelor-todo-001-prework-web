require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |cont_hash|
    if cont_hash["status"] == "Winner"
      return cont_hash["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |cont_hash|
      if cont_hash["occupation"] == occupation
        return cont_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |cont_hash|
      if cont_hash["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |cont_hash|
      if cont_hash["hometown"] == hometown
        return cont_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_sum = 0
  num_cont = 0
  data[season].each do |cont_hash|
    age_sum += cont_hash["age"].to_f
    num_cont += 1
  end
  (age_sum / num_cont).round
end

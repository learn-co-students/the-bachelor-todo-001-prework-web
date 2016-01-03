require "pry"
def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant|
    return contestant["name"].split(" ").first if contestant["status"] == "Winner"
  end
end

def get_contestant_name(data, occupation)
  data.values.each do |contestants|
    contestants.each do |contestant|
      return contestant["name"] if contestant["occupation"] == occupation
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.values.each do |contestants|
    contestants.each do |contestant|
      counter += 1 if contestant["hometown"] == hometown
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.values.each do |contestants|
    contestants.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end
end

def get_average_age_for_season(data, season)
  ages = data[season].collect{|contestant| contestant["age"].to_f}
  average = (ages.inject{|total, i| total + i} / ages.length.to_f).round
end

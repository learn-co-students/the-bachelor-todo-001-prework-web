#require 'json'

def get_first_name_of_season_winner(data, season)

  data[season].each do |contestant_stats| #season is list of dicts
    if contestant_stats["status"] == "Winner"
      return contestant_stats["name"].split[0]
    end
  end

  nil
end

def get_contestant_name(data, occupation)

  data.each do |season, season_contestants|
    season_contestants.each do |contestant_stats|
      if contestant_stats["occupation"] == occupation
        return contestant_stats["name"]
      end
    end
  end

  nil
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0

  data.each do |season, season_contestants|
    season_contestants.each do |contestant_stats|
      if contestant_stats["hometown"] == hometown
        hometown_count += 1
      end
    end
  end

  hometown_count
end

def get_occupation(data, hometown)
  data.each do |season, season_contestants|
    season_contestants.each do |contestant_stats|
      if contestant_stats["hometown"] == hometown
        return contestant_stats["occupation"]
      end
    end
  end

  nil
end

def get_average_age_for_season(data, season)
  num_contestants = 0
  sum_of_ages = 0

  data[season].each do |contestant_stats|
    contestant_age = contestant_stats["age"].to_i
    if(contestant_age && contestant_age > 0) #in case age is empty string
      sum_of_ages += contestant_age
      num_contestants += 1
    end
  end

  #Avoid div/0 error; calculate division as float and then round
  num_contestants > 0 ? (sum_of_ages.to_f/num_contestants).round : nil
end

#data = JSON.parse(File.read('spec/fixtures/contestants.json'))
#average = get_average_age_for_season(data, "season 10")

#puts "Average = #{average}"

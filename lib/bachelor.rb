require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data[season].each do |person|
    if person.values.include?("Winner")
      winner = person["name"].split(" ").first
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season,info|
    info.each do |person|
      if person.values.include?(occupation)
	name = person["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season,info|
    info.each do |person|
      if person.values.include?(hometown)
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  occupation = ""
  data.each do |season,info|
    info.find do |person|
      if person.values.include?(hometown)
        occupation = person["occupation"]
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data[season].each do |person|
    ages << person["age"].to_f
  end
  sum = ages.inject{|sum,x| sum + x }
  avg = sum / ages.length
  avg.round
end

require 'pry'
require 'json'

json = { :data => JSON.parse(File.read('spec/fixtures/contestants.json'))}

def get_first_name_of_season_winner(data, season)
  # code here
  result = nil
  data.each do |s_num, s_data|
  	if s_num == season
      s_data.each do |person|
        if person["status"].downcase == "winner"
          result = person["name"].split(" ")
        end
      end
  	end
  end
  result[0]
end

# Passes tests but solution is weak, what if 2 people have same occupation?
def get_contestant_name(data, occupation)
  # code here
  data.each do |season, s_data|
    s_data.each do |person|
      person.each do |attribute, value|
        if value == occupation
          return person["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  matches = 0
  data.each do |season, s_data|
    s_data.each do |person|
      person.each do |attribute, value|
        if value == hometown
          matches += 1
        end
      end
    end
  end
  matches
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, s_data|
    s_data.each do |person|
      person.each do |attribute, value|
        if value == hometown
          return person["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total_people = 0
  ages_total = 0
  data.each do |s_num, s_data|
    if s_num == season
      total_people = s_data.length
      s_data.each do |person|
        ages_total += person["age"].to_f
      end
    end
  end
  result = ages_total / total_people
  result.round
end

data = json[:data]
season = "season 10"
# occupation = "Wedding Cake Decorator"
# hometown = "New York, New York"


# Method calls:

# get_first_name_of_season_winner(data, season)
# get_contestant_name(data, occupation)
# count_contestants_by_hometown(data, hometown)
get_average_age_for_season(data, season)
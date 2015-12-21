require 'pry'
require 'pry-nav'

def get_first_name_of_season_winner(data, season)
  winner = {}
  data.each do |s, c_array|
    if s == season
      c_array.each do |stats_hash|
        winner["name"] = stats_hash["name"] if stats_hash["status"] == "Winner"
      end
    end
  end
  winner
  name = winner["name"].split
  name.first
end

def get_contestant_name(data, occupation)
  contestant = nil
  data.each do |season, c_array|
    c_array.each do |stats_hash|
      contestant = stats_hash["name"] if stats_hash["occupation"] == occupation
    end
  end
  contestant
end

def count_contestants_by_hometown(data, hometown)
  contestants = []
    data.each do |season, c_array|
      c_array.each do |stats_hash|
        contestants << stats_hash["name"] if stats_hash["hometown"] == hometown
      end
    end
  contestants.size
end

def get_occupation(data, hometown)
  occ = nil
  data.each do |k, contestants|
    contestants.each do |stats|
      occ = stats["occupation"] if stats["hometown"] == hometown
      break unless occ == nil
    end
  end  
  occ
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |s, c|
    c.each { |stats| ages << stats["age"].to_i } if s == season
  end
  
  sum = ages.inject { |sum, i| sum + i }
  average = sum.to_f / ages.size
  (average + 0.5).to_i
end

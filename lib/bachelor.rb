require 'pry'
require 'json'

bachelor_contestants = JSON.parse(File.read('spec/fixtures/contestants.json'))

def merge_seasons(data)
  data.each_with_object([]) do |(k,v), a|
    a << v
    v.each { |contestant| contestant["season"] = k }
  end.flatten
end

def get_first_name_of_season_winner(data, season)
  winner = data[season].find { |contestant| contestant["status"] == "Winner" }
  winner.fetch("name").split[0]
end

def get_contestant_name(data, occupation)
  sorted_data = merge_seasons(data)
  contestant = sorted_data.find { |contestant| contestant["occupation"] == occupation }
  contestant.fetch("name")
end

def count_contestants_by_hometown(data, hometown)
  sorted_data = merge_seasons(data)
  sorted_data.select { |contestant| contestant["hometown"] == hometown}.length
end

def get_occupation(data, hometown)
  sorted_data = merge_seasons(data)
  contestant = sorted_data.find { |contestant| contestant["hometown"] == hometown }
  contestant.fetch("occupation")
end

def get_average_age_for_season(data, season)
  combined_age = data[season].inject(0) { |total_age, contestant| total_age += contestant["age"].to_f }
  (combined_age / data[season].count).round
end

# def get_first_name_of_season_winner(data, season)
#   winner = "No winner yet"
#   data[season].each do |contestant|
#     winner = contestant["name"].split[0] if contestant["status"] == "Winner"
#   end
#   winner
# end

# def get_contestant_name(data, occupation)
#   contestant = "No contestant had that occupation"
#   data.values.each do |contestants|
#     contestants.each do |person|
#       contestant = person["name"] if person["occupation"] == occupation
#     end
#   end
#   contestant
# end

# def count_contestants_by_hometown(data, hometown)
#   count = 0
#   data.values.each do |contestants|
#     contestants.each do |person|
#       count += 1 if person["hometown"] == hometown
#     end
#   end
#   count
# end

# def get_occupation(data, hometown)
#   occupation = "No contestant from that hometown"
#   data.values.each do |contestants|
#     contestants.each do |person|
#       if person["hometown"] == hometown
#         occupation = person["occupation"]
#         break
#       end
#     end
#   end
#   occupation
# end

# def get_average_age_for_season(data, season)
#   combined_age = 0
#   num_contestants = 0
#   data[season].each do |contestant|
#     combined_age += contestant["age"].to_f
#     num_contestants += 1
#   end
#   (combined_age / num_contestants).round
# end

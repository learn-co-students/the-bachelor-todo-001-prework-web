def get_first_name_of_season_winner(data, season)
  data[season].select {|stats| stats["status"] == "Winner"}[0]["name"].split[0]
end

def get_contestant_name(data, occupation)
#   name = ""
#   data.each {|season, people| people.each {|stats| name = stats["name"] if stats["occupation"] == occupation}}
#   name
  data.collect {|season, people| people.collect {|stats| stats["name"] if stats["occupation"] == occupation}}.flatten.compact[0]
end

def count_contestants_by_hometown(data, hometown)
#   count = 0
#   data.each {|season, people| people.each {|stats| count += 1 if stats["hometown"] == hometown}}
#   count
  data.collect {|season, people| people.select {|stats| stats["hometown"] == hometown}}.flatten.compact.size
end

def get_occupation(data, hometown)
#   occupation = ""
#   data.each {|season, people| people.each {|stats| occupation = stats["occupation"] if stats["hometown"] == hometown && occupation == ""}}
#   occupation
  data.collect {|season, people| people.collect {|stats| stats["occupation"] if stats["hometown"] == hometown}}.flatten.compact[0]
end

def get_average_age_for_season(data, season)
  (data[season].inject(0) {|total, stats| total += stats["age"].to_i} / data[season].size.to_f).round
end

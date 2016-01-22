require 'json'

data = JSON.parse(File.read('spec/fixtures/contestants.json'))
def get_first_name_of_season_winner(data, season)
  winner = nil
  data.each do |season_data, contestant_data|
    if season_data == season
      contestant_data.collect do |contestant|
	if contestant["status"] == "Winner"
	  winner = contestant["name"].split[0]
        end
      end
    end 
  end
  winner
end

def get_contestant_name(data, occupation)
  return_name = [] 
  data.each do |season, contestant_data|
    contestant_data.each do |contestant|
      if contestant["occupation"].strip == occupation.strip
         return_name.push(contestant["name"])
      end
    end
  end
  return return_name.join(", ")
end

def count_contestants_by_hometown(data, hometown)
  contestant_name = []
  data.each do |season, contestant_data|
    contestant_data.each do |contestant|
      if contestant["hometown"] == hometown
	contestant_name.push(contestant["name"])
      end
    end
  end
  return contestant_name.count
end


def get_occupation(data, hometown)
  contestant_occupation = []
  data.each do |seacon, contestant_data|
    contestant_data.each do |contestant|
     if contestant["hometown"] == hometown
	contestant_occupation.push(contestant["occupation"])
     end
    end
  end
  return contestant_occupation[0]
end

def get_average_age_for_season(data, select_season)
  ages = []
  data.each do |season, contestant_data|
    if season == select_season
      contestant_data.each do |contestant|
        ages.push(contestant["age"].to_f)
      end
    end
  end
  average_age = ( (ages.reduce(:+)/ages.size) + 0.49).to_i
end




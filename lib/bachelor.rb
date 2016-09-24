def get_first_name_of_season_winner(data, season)
winner_name = nil
  data.each do |episode, person|
    if episode == season
      person.each do |details, info|
        if details["status"] == "Winner"
          winner_name = details["name"]
        end
      end
    end
  end
winner_name.split(" ")[0]
end

def get_contestant_name(data, occupation)
  professional = nil
    data.each do |episode, person|
        person.each do |details, info|
          if details["occupation"] == occupation
            professional = details["name"]
          end
        end
    end
  professional
end

def count_contestants_by_hometown(data, hometown)
  hometown_array = []
  data.each do |episode, person|
    person.each do |details, info|
      if details["hometown"] == hometown
        hometown_array << details["name"]
      end
    end
  end
  hometown_array.count
end

def get_occupation(data, hometown)
  data.each do |episode, person|
    person.each do |details, info|
      if details["hometown"] == hometown
        return details["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
  average = 0
  data.each do |episode, person|
    if episode == season
      person.each do |details, info|
        ages << details["age"]
      end
    end
  end
  ages.each {|x| average += x.to_f }
  (average/ages.length).round 
end

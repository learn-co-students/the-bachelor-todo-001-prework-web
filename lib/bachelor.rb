def get_first_name_of_season_winner(data, season)
  winner = nil
  data.each do |season_in_question, contestants|
    if season_in_question == season
      contestants.each do |stat, value|
        if stat["status"] == "Winner"
          winner = stat["name"]
        end
      end
    end
  end
  winner.split(" ").first
end

def get_contestant_name(data, occupation)
  name = nil
  data.each do |season, contestants|
    contestants.each do |stat, value|
      if stat["occupation"] == occupation
        name = stat["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |stat, value|
      if stat["hometown"] == hometown
        count = count + 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  first_from = []
  data.each do |season, contestants|
    contestants.each do |stat, value|
      if stat["hometown"] == hometown
        first_from << stat["occupation"]
      end
    end
  end
  first_from[0].to_s
end

def get_average_age_for_season(data, season)
  ages = []
  contestant_count = 0
  sum = 0
  data.each do |season_in_question, contestants|
    if season_in_question == season
      contestants.each do |stat, value|
        ages << stat["age"].to_i
        contestant_count = contestant_count + 1
      end
    end
  end
  ages.each{|age| sum += age.to_f}#return [ages] / contestant_count) #Dunno why this is not passing???
  average = (sum/ages.length).round
end

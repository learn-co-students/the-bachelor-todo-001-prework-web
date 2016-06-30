def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data.each do |season_num, contestant|
    if season_num == season
      contestant.each do |deets|
        if deets["status"] == "Winner"
          winner = deets["name"]
        end
      end
    end
  end
  winner = winner.split(" ")
  return winner[0]
end

def get_contestant_name(data, occupation)
  # code here
  job = ""
  data.each do |season_num, contestant|
    contestant.each do |deets|
      if deets["occupation"] == occupation
        job = deets["name"]
      end
    end
  end
  return job
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season_num, contestant|
    contestant.each do |deets|
      if deets["hometown"] == hometown
        counter += 1
      end
    end
  end
  return counter
end

def get_occupation(data, hometown)
  # code here
  job = ""
  data.each do |season_num, contestant|
    contestant.each do |deets|
      if deets["hometown"] == hometown
        job = deets["occupation"]
        return job
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  avg_age = 0
  counter = 0
  data.each do |season_num, contestant|
    if season_num == season
      contestant.each do |deets|
        avg_age = avg_age + deets["age"].to_f
        counter += 1
        end
      end
    end
  #end
  avg_age = avg_age / counter
  return avg_age.round
end

def get_first_name_of_season_winner(data, season)
  # code here
  name = ''
  data.each do |seasonname, contestants|
    if seasonname == season
      contestants.each do |contestant|
        if contestant["status"] == "Winner"
          name = contestant["name"]
        end
      end
    end
  end
  name.split(" ")[0]
end

def get_contestant_name(data, occupation)
  name = ''
  data.each do |seasonname, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        name = contestant["name"]
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0

  data.each do |seasonname, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  occupation = ''
  data.each do |seasonname, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown && occupation == ''
        occupation = contestant["occupation"]
      end
    end
  end
  occupation
end

def get_average_age_for_season(data, season)
  # code here
  total_age = 0
  counter = 0
  data.each do |seasonname, contestants|
    if seasonname == season
      contestants.each do |contestant|
        counter += 1
        total_age += contestant["age"].to_f
      end
    end
  end
  (total_age / counter).round
end


require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |contenstant|
        if contenstant.has_value?("Winner")
          return contenstant["name"].split(" ")[0]
        end
      end
    end
  end
end


def get_contestant_name(data, occupation)
  # code here
  data.each do |season_number, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code 
  counter = 0

  data.each do |season_number, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season_number, contestants|
    contestants.each do |contestants|
      if contestants["hometown"] == hometown
        return contestants["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []

  data.each do |season_number, contestants|
    if season_number == season
      contestants.each do |contestant|
        ages << contestant["age"].to_i
      end
    end
  end
  (ages.inject{|sum, x| sum += x}/ages.size.to_f).round
end




#binding.pry
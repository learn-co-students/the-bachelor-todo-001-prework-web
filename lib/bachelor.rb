def get_contestant_data()

end

def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_number, contestants_array|
    if season_number == season
      contestants_array.each do |contestant|
        contestant.each do |attribute, value|
          if value == "Winner"
            # return only the first item after splitting the full name into an array
            return contestant["name"].split(" ").shift
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if occupation == value
          return contestant["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if hometown == value
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, contestants|
    contestants.each do |contestant|
      contestant.each do |attribute, value|
        if hometown == value
          return contestant["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  ages = []
  data.each do |season_number, contestants|
    if season_number == season
      ages = contestants.collect do |contestant|
        contestant["age"].to_f
      end
    end
  end

  # sum keeps track of the sum and element continues to add the current element
  # being passed to the total in sum
  avg_age = ages.inject { |sum, element| sum + element } / ages.size
  avg_age.round
end

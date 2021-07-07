def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |attributes|
        attributes.each do |attribute, val|
          first_name = val.split(" ")[0] if attribute == "name"
          return first_name
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |seasons, contestants|
    contestants.each do |attributes|
      attributes.each do |attribute, val|
        if attributes.has_value?(occupation)
          return val if attribute == "name"
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |seasons, contestants|
    contestants.each do |attributes|
      attributes.each do |attribute, val|
        if val == hometown
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |seasons, contestants|
    contestants.each do |attributes|
      attributes.each do |attribute, val|
        if attributes.has_value?(hometown)
          return val if attribute == "occupation"
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  sum_ages = 0
  contestant_count = 0
  data.each do |seasons, contestants|
    if seasons == season
      contestants.each do |attributes|
        contestant_count += 1
        attributes.each do |attribute, val|
          if attribute == "age"
            sum_ages += val.to_f
          end
        end
      end
    end
  end
  (sum_ages / contestant_count).round
end

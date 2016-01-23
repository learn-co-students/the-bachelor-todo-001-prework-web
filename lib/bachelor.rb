require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |k, v|
    if k == season
      v.each do |k2, v2|
        if k2.values.include?"Winner"
          return k2["name"].split.first
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |k, v|
    v.each do |k2, v2|
      if k2["occupation"] == occupation
        return k2["name"]
      end
    end
  end
  # code here
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |k, v|
    v.each do |k2, v2|
      if k2["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
    data.each do |k, v|
    v.each do |k2, v2|
      if k2["hometown"] == hometown
        return k2["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  ages = []
    data.each do |k, v|
    if k == season
      v.each do |k2, v2|
        ages <<k2["age"].to_f

      end
    end
  end
  average = (ages.inject(:+)/ages.length).round
end

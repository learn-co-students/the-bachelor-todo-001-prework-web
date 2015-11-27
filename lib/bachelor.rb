def get_first_name_of_season_winner(data, season)
  name = nil
  data[season].each do |k, v|
    k.each do |k, v| k == "name" ? name = v : nil
      return name.split[0] if k == "status" && v == "Winner"
    end
  end
  name
end

def get_contestant_name(data, occupation)
  name = nil
  data.each do |k, v|
    v.each do |k, v|
      k.each do |k, v| k == "name" ? name = v : nil
      return name if k == "occupation" && v == occupation
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |k, v|
    v.each do |k, v|
      k.each { |k, v| k == "hometown" && v == hometown ? count +=1 : nil }
    end
  end
  count
end

def get_occupation(data, hometown)
  output = nil
  data.each do |k, v|
    v.each do |k, v|
      k.each { |key, val| if key == "hometown" && val == hometown  
        return output = k["occupation"] end }
    end
  end
  output
end

def get_average_age_for_season(data, season)
  arr = []
  data[season].each do |key, val|
    key.each { |k, v| k == "age" ? arr << v.to_i : nil }
  end
  (arr.reduce(:+) / arr.size.to_f).round
end

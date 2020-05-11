def get_first_name_of_season_winner(data, season)
  # code here
  first_name = ""
  full_name = ""
  data[season].each do |x|
    if x.has_value?("Winner")
      full_name = x["name"]
      return full_name.split(" ").first
    end
  end

end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season, modata|
    modata.each do |x|
      if x.has_value?(occupation)
        return x["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
    count = 0
  data.each do |season, modata|
    modata.each do |x|
      if x.has_value?(hometown)
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, modata|
    modata.each do |x|
      if x.has_value?(hometown)
        return x["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  total = 0
  new = []

  data[season].each do |x| # its in an array
    new << x["age"].to_i
  end
  new.each {|age| total = total + age}
  average = (total.to_f / new.length.to_f).round
end
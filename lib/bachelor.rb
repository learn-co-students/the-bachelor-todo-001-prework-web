require 'pry'

def get_first_name_of_season_winner(data, season)
  first_name = ""
  full_name = ""
  winnerhash = {}

  data[season].each do |i| # its in an array
    if i.has_value?("Winner")
      full_name = i["name"]
      return full_name.split(" ").first
    end
  end

end


def get_contestant_name(data, occupation)

  data.each do |season, info|
    info.each do |i|
      if i.has_value?(occupation)
        return i["name"]
      end
    end
  end

end


def count_contestants_by_hometown(data, hometown)
  
  count = 0
  data.each do |season, info|
    info.each do |i|
      if i.has_value?(hometown)
        count += 1
      end
    end
  end

  count
end


def get_occupation(data, hometown)

  data.each do |season, info|
    info.each do |i|
      if i.has_value?(hometown)
        return i["occupation"]
      end
    end
  end

end


def get_average_age_for_season(data, season)
  sum = 0
  arr = []

  data[season].each do |i| # its in an array
      arr << i["age"].to_i
  end
  
  arr.each {|j| sum = sum + j}

  average = (sum.to_f / arr.length.to_f).round
end
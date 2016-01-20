require 'pry'

def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |key|
    return key['name'].split(' ').first if key['status'] == 'Winner'
  end
end

def get_contestant_name(data, occupation)
  # code here 
  data.each do |season, values|
    values.each do |sub_values|
      return sub_values['name'] if sub_values['occupation'] == occupation 
  end
end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0 
  data.each do |season, values|
    values.each do |sub_values|
      count += 1 if sub_values['hometown'] == hometown
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  data.each do |season, values|
    values.each do |sub_values|
      return sub_values['occupation'] if sub_values['hometown'] == hometown 
  end
end
end

def get_average_age_for_season(data, season)
  # code here
  number_of_contestants = data[season].count
  sum_of_ages = 0
  data[season].each do |key|
    sum_of_ages += key['age'].to_i
  end
  (sum_of_ages.to_f / number_of_contestants).round
end

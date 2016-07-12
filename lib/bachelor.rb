require 'pry'


def get_first_name_of_season_winner(data, season)
  # code here
  array = []
  data.each do |seas, info|
    if seas == season
      info.each do |k|
        if k.has_value?("Winner")
          array << k.values[0]
        end
      end
    end
  end
x = array.join
y = x.split(" ")
y[0]
end


def get_contestant_name(data, occupation)
  # code here
array =[]
  data.each do |seas, info|
      info.each do |k|
        if k.has_value?(occupation)
          array << k.values[0]
        end
      end
    end
    array[0]
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |seas, info|
      info.each do |k|
        if k.has_value?(hometown)
          counter +=1
        end
      end
    end
    counter
end

def get_occupation(data, hometown)
  # code here
  array = []
  data.each do |seas, info|
      info.each do |k|
        if k.has_value?(hometown)
          array << k.values[3]
      end
    end
  end
  array[0]
end

def get_average_age_for_season(data, season)
  # code here
  array = []
  data.each do |seas, info|
    if seas == season
      info.each do |k|
      array << k.values[1].to_i
    end
  end
end
total = array.inject(:+)
len = array.length
average = total / len
average
end

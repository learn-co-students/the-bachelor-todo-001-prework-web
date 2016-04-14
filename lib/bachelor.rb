def get_first_name_of_season_winner(data, season)
  # code here
  name = []
  data_array = []
  data.each do |season_name, value|
    if season_name == season
      value.each do |k, v|
        k.each do |x,y|
          data_array.push(y)
        end
      end
    end
  end
  data_array.each do |x|
    if x == "Winner"
      winner_index = data_array.index("Winner") - 4
    name = data_array[winner_index]
  end
  end
  name.split(" ").first
end

def get_contestant_name(data, occupation)

  data_array = []
  data.each do |season_name, array|
array.each do |person|
   data_array.push(person.values)

  end
  end

  data_array.each do |x|
    x.each do |y|
      if y == occupation
       index = x.index(y) - 3
      return x[index]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
 data_array = []
  data.each do |season_name, array|
array.each do |person|
   data_array.push(person.values)
  end
  end
counter = 0
 data_array.each do |x|
    x.each do |y|
      if y == hometown
       counter += 1
      end
    end
  end
return counter
end

def get_occupation(data, hometown)
   data_array = []
  data.each do |season_name, array|
array.each do |person|
   data_array.push(person.values)

  end
  end

  data_array.each do |x|
    x.each do |y|
      if y == hometown
       index = x.index(y) + 1
      return x[index]
      end
    end
  end

end

def get_average_age_for_season(data, season)

  data_array = []
  data.each do |season_name, value|
    if season_name == season
      value.each do |k, v|
        k.each do |x,y|
          data_array.push(y)
        end
      end
    end
  end
  counter = 1
  index = 1
  age_collection = data_array[index].to_i

  until index > data_array.length
  index += 5
  age_collection += data_array[index].to_i
  counter += 1
  end
  puts age_collection
  puts counter
  age = (age_collection/25).ceil
  if age == 25
    age +=1
    else
    age
  end
 #first age starts at index 1, then every 5 elements is the next age
end
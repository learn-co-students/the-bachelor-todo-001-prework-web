def get_first_name_of_season_winner(data, season)

  season_data = find_season(data, season)
  winner = find_info(season_data, "status", "Winner")
  winner_name = winner["name"]

  winner_name.split.first

end

def get_contestant_name(data, occupation)

  data.each do |season, contestants|
    name = find_name_from_occupation(contestants, occupation)
    if name != nil
      return name
    end
  end

end

def count_contestants_by_hometown(data, hometown)

  counter = 0

  data.each_value do |contestant_array|
    contestant_array.each do |contestant|
      counter += 1 if is_from_hometown(contestant, hometown)
    end
  end

  counter

end

def get_occupation(data, hometown)

  data.each_value do |contestant_array|
    contestant_array.each do |contestant|
      return contestant["occupation"] if contestant["hometown"] == hometown
    end
  end

end

def get_average_age_for_season(data, season)

  ages = []

  contestants = find_season(data, season)
  contestants.each do |contestant|
    ages << contestant["age"]
  end

  average(ages)

end

def average(array)

  sum = 0.0

  array.each do |value|
    sum += value.to_f
  end

  average = sum / array.length.to_f
  average.round

end


def find_season (data, season_number)

  data.each do |season, values|
    return values if season == season_number
  end

  puts "Season not found."
  return nil

end

def find_info(season_data, info_name, info_value)

  season_data.find do |contestant|
    return contestant if contestant[info_name] == info_value
  end

  puts "Info not found."
  return nil

end

def find_name_from_occupation(season_data, occupation)

  season_data.find do |contestant|
      return contestant["name"] if contestant["occupation"] == occupation
  end

  return nil

end

def is_from_hometown(contestant_data, hometown)

  return true if contestant_data["hometown"] == hometown

end

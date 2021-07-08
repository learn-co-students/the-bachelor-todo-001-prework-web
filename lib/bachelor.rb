require "pp"

def get_first_name_of_season_winner(data, season_query)
  winner = data[season_query].find do |person_hash|
    person_hash["status"] == "Winner"
  end
  winner["name"].split(' ')[0]
end

def get_contestant_name(_data, _occupation)
  _data.each do |season, cast|
    cast.each do |contestant|
      if contestant["occupation"] == _occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(_data, _hometown)
  counter = 0
  _data.each do |season, cast_array|
    cast_array.each do |contestant|
      if contestant["hometown"] == _hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(_data, _hometown)
  _data.each do |season, cast_array|
    cast_array.each do |contestant|
      if contestant["hometown"] == _hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(_data, _season)
  total = 0
  entries = 0
  _data[_season].each do |cast_member|
    total += cast_member["age"].to_f
    entries += 1
  end
  return (total / entries).round
end

def get_first_name_of_season_winner(data, season)
  ganador = ""
  data[season].each do |x|
    x.each do |a, b|
      if b == "Winner"
        ganador << x["name"]
      end
    end
  end
  ganador = ganador.split
  ganador = ganador.first
end

def get_contestant_name(data, occupation)
  job = ""
  data.each do |season, array|
    array.each do |hash|
      hash.each do |category, stat|
        if stat == occupation
          job << hash["name"]
        end
      end
    end
  end
  job
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, array|
    array.each do |hash|
      hash.each do |category, stat|
        if stat == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  job = []
  data.each do |season, array|
    array.each do |hash|
      hash.each do |category, stat|
        if stat == hometown
          job << hash["occupation"]
        end
      end
    end
  end
  job.first
end

def get_average_age_for_season(data, season)
  total_age = 0.0
  participants = 0.0
  data[season].each do |hash|
    hash.each do |category, stat|
      if category == "age"
        total_age += stat.to_f
        participants += 1.0
      end
    end
  end
  avg_age = total_age/participants
  avg_age.round
end
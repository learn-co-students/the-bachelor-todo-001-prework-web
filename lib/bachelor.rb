def get_first_name_of_season_winner(data, season)

  winner = ""

  data[season].each do |hash|
    current_name = hash["name"]
    hash.each do |info,result|
      if info == "status" && result == "Winner"
        winner = current_name
      end
    end
  end

  winner.split(" ")[0]

end

def get_contestant_name(data, occupation)

  answer = ""

  data.each do |season,array|
    array.each do |hash|
      current_name = hash["name"]
      hash.each do |info,result|
        if info == "occupation" && result == occupation
          answer = current_name
        end
      end
    end
  end

  answer

end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |season,array|
    array.each do |hash|
      hash.each do |info,result|
        if info == "hometown" && result == hometown
          counter += 1
        end
      end
    end
  end

  counter

end

def get_occupation(data, hometown)

  answer = []

  data.each do |season,array|
    array.each do |hash|
      current_job = hash["occupation"]
      hash.each do |info,result|
        if info == "hometown" && result == hometown
          answer << current_job if answer.empty?
        end
      end
    end
  end

  answer.join("")

end

def get_average_age_for_season(data, season)

  total_age = 0
  num_of_contestants = 0

  data[season].each do |hash|
    num_of_contestants += 1
    hash.each do |info,result|
      if info == "age"
        total_age += result.to_f
      end
    end
  end

  answer = total_age / num_of_contestants

  answer.round



end

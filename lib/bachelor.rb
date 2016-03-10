def get_first_name_of_season_winner(data, season)
  # code here
  winner = ""
  data.each do |season_no, info|
    if season_no == season
      info.each do |blette|
        blette.each do |key, value|
          if value.include?("Winner")
            winner = blette["name"]
          end
        end
      end
    end
  end
  winner = winner.split(" ")
  winner = winner[0]
end

def get_contestant_name(data, occupation)
  # code here
  name = ""
  data.each do |season_no, info|
    info.each do |blette|
      blette.each do |key, value|
        if value.include?(occupation)
          name = blette["name"]
        end
      end
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season_no, info|
    info.each do |blette|
      blette.each do |key, value|
        if value.include?(hometown)
          count += 1
        end
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  job = ""
  data.each do |season_no, info|
    info.each do |blette|
      blette.each do |key, value|
        if value.include?(hometown)
          job = blette["occupation"]
          return job
        end
      end
    end
  end
  job
end

def get_average_age_for_season(data, season)
  # code here
  ages_array = []
  avg_age = 0
  data.each do |season_no, info|
    if season_no == season
      info.each do |blette|
        blette.each do |key, value|
          ages_array << blette["age"]
        end
      end
    end
  end
  ages_array.each do |x|
    avg_age += x.to_f
  end
  avg_age = ((avg_age / ages_array.length)).round
  avg_age
end

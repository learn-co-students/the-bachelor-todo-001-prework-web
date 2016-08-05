def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |season_name, info|
      if season_name == season
          info.each do |contestant|
              if contestant["status"] == "Winner"
                  first_name = contestant["name"].split[0]
                  return first_name
                  end
              end
          end
      end
  return nil
end

def get_contestant_name(data, occupation)
  # code here
  data.values.each do |season|
      season.each do |contestant|
          if contestant["occupation"] == occupation
              return contestant["name"]
              end
          end
      end
  return nil
end

def count_contestants_by_hometown(data, hometown)
  # code here
  hometown_count = 0
  data.values.each do |season|
      season.each do |contestant|
          if contestant["hometown"] == hometown
              hometown_count += 1
              end
          end
      end
  hometown_count
end

def get_occupation(data, hometown)
  # code here
  data.values.each do |season|
      season.each do |contestant|
          if contestant["hometown"] == hometown
              return contestant["occupation"]
          end
      end
  end
  nil
end

def get_average_age_for_season(data, season)
  # code here
  season_avg = 0
  contestant_count = 0
  data.each do |season_name, info|
      if season_name == season
          info.each do |contestant|
              season_avg += contestant["age"].to_f
              contestant_count += 1
          end
      end
  end
  season_avg = season_avg.to_f/contestant_count.to_f
  season_avg.round
end

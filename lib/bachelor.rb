require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_num , cont_hash|
    if season_num == season
      cont_hash.each do |person_hash|
        if person_hash["status"] == "Winner"
          name = person_hash["name"].split(' ')
          return name[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_num , cont_hash|
    cont_hash.each do |person_hash|
      if person_hash["occupation"] == occupation
        return person_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  cnt = 0
  data.each do |season_num , cont_hash|
    cont_hash.each do |person_hash|
      if person_hash["hometown"] == hometown
        cnt += 1
      end
    end
  end
  cnt
end

def get_occupation(data, hometown)
  data.each do |season_num , cont_hash|
    cont_hash.each do |person_hash|
      if person_hash["hometown"] == hometown
        return person_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_cnt = 0
  cnt = 0.0
  data.each do |season_num , cont_hash|
    if season_num == season
      cont_hash.each do |person_hash|
        age_cnt = age_cnt + person_hash["age"].to_f
        cnt += 1.0
      end
    end
  end
  return (age_cnt/cnt).round(0).to_i
end

def get_first_name_of_season_winner(data, season)
  name = nil

  data.each do |seas, arr_of_contestants|
    if seas == season
      arr_of_contestants.each do |contest_hash|
        contest_hash.each do |attribute, data|
          name = data if attribute == "name"
          if attribute == "status" && data == "Winner"
            return name.split(" ").first
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  name = nil

  data.each do |seas, arr_of_contestants|
    arr_of_contestants.each do |contest_hash|
      contest_hash.each do |attribute, data|
        name = data if attribute == "name"
        return name if data == occupation && attribute == "occupation"
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0

  data.each do |seas, arr_of_contestants|
    arr_of_contestants.each do |contest_hash|
      contest_hash.each do |attribute, data|
        count += 1 if data == hometown && attribute == "hometown"
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  trigger = false

  data.each do |seas, arr_of_contestants|
    arr_of_contestants.each do |contest_hash|
      contest_hash.each do |attribute, data|
        return data if "occupation" == attribute && trigger == true
        trigger = true if data == hometown && attribute == "hometown"
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age = 0
  num_contestants = 0

  data.each do |seas, arr_of_contestants|
    if seas == season
      arr_of_contestants.each do |contest_hash|
        num_contestants += 1
        contest_hash.each do |attribute, data|
          age += data.to_i if attribute == "age"
        end
      end
    end
  end
  (age.to_f / num_contestants.to_f).round
end

require 'pry'
require 'json'

def get_first_name_of_season_winner(data, season)
  data.each do |season_info, details|
    if season_info == season
      details.each do |list|
        list.each do |attribute, value|
          if attribute == "status" && value == "Winner"
            return list["name"].split.first
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_info, details|
      details.each do |list|
        list.each do |attribute, value|
          if attribute == "occupation" && value == occupation
            return list["name"]
          end
        end
      end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season_info, details|
      details.each do |list|
        list.each do |attribute, value|
          if attribute == "hometown" && value == hometown
            count += 1
          end
        end
      end
  end
  count
end

def get_occupation(data, hometown)
   data.each do |season_info, details|
      details.each do |list|
        list.each do |attribute, value|
          if attribute == "hometown" && value == hometown
            return list["occupation"]
          end
        end
      end
  end
end

def get_average_age_for_season(data, season)
  age = []
  data.each do |season_info, details|
    if season_info == season
      details.each do |list|
        list.each do |attribute, value|
            age << list["age"].to_f
        end
      end
    end
  end
  (age.inject(0.0) {|sum, el| sum + el} / age.size).round
end


#data = JSON.parse(File.read('spec/fixtures/contestants.json'))


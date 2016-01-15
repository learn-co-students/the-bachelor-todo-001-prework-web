require 'pry'

def get_first_name_of_season_winner(data, season)
  name = ''
  data.each do |season_key, contestants|
    if season == season_key
      contestants.each do |contestant_data|
        contestant_data.each do |key, value|
          if value == "Winner"
            name << contestant_data["name"]
          end
        end
      end
    end
  end
  name.split(" ")[0]
end


def get_contestant_name(data, occupation)
  name = ''
  data.each do |season, contestants|
    contestants.each do |data_items|
      data_items.each do |key, value|
        if value == occupation
          name << data_items["name"]
        end
      end
    end
  end
  name
end

#data = { "season 10"=>[{"name" => "Nikki Ferrell","age"=> "26","hometown"=> "Kearney, Missouri","occupation"=> "Pediatric Nurse","status"=> "Winner"},{"name"=> "Paige Vigil","age"=> "25","hometown"=> "Cranston, Rhode Island","occupation"=> "Jumbotron Operator","status"=> "Eliminated in episode 1"}]}
#get_first_name_of_season_winner(data, "season 10")

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |data_items|
      data_items.each do |key, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  occupation = []
  data.each do |season, contestants|
    contestants.each do |data_items|
      data_items.each do |key, value|
        if value == hometown
          occupation << data_items["occupation"]
        end
      end
    end
  end
  occupation[0].to_s
end

def get_average_age_for_season(data, season)
  ages = []
  data.each do |season_key, contestants|
    if season_key == season
      contestants.each do |data_items|
        data_items.each do |key, value|
          if key == "age"
            ages << value.to_i
          end
        end
      end
    end
  end
  (ages.inject{ |sum, el| sum + el }.to_f / ages.size).round
end

require 'pry'
def get_first_name_of_season_winner(data, season)
  holder = ""
  data.each do |seasons, array|
    if seasons == season
      array.each do |hash|
        hash.each do |key, value|
          if value == "Winner"
            holder = hash["name"]
            holder = holder.split.first
          end
        end
      end    
    end
  end    
  holder
#  binding.pry
end

def get_contestant_name(data, occupation)
  holder = ""
  data.each do |seasons, array|
    array.each do |hash|
      hash.each do |key, value|
        if value == occupation
          holder = hash["name"]
        end
      end
    end
  end
  holder        
end

def count_contestants_by_hometown(data, hometown)
  holder = []
  counter = 0
  data.each do |seasons, array|
    array.each do |hash|
      hash.each do |key, value|
        if value == hometown
          holder << hash["name"]
          #holder.each do |name|
            counter = holder.length
            #counter += 1
        end
      end
    end
  end 
  counter
end

def get_occupation(data, hometown)
  holder = []
  data.each do |seasons, array|
    array.each do |hash|
      hash.each do |key, value|
        if value == "#{hometown}"
         #hash["occupation"]
        holder.push(hash["occupation"])
        end
      end
    end
  end
  holder[0]        
end

def get_average_age_for_season(data, season)
  a2 = []
  total = 0
  contestants = 0
  average = 0
  data.each do |seasons, array|
    if seasons == season
      array.each do |hash|
        hash.each do |key, value|
          a2 << hash["age"]
          contestants = a2.length
          total += hash["age"].to_f
          average = (total / contestants)
            #total age, maybe lol in the thousands
          
        end
      end    
    end
  end    
  average.round
end



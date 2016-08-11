def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each do |info|
        if info["status"] == "Winner"
          return info["name"].split.first
        end
    end      
end
require 'pry'
def get_contestant_name(data, occupation)
  # code here, return name of woman with that occupation
  data.each do |season, array|
    array.each do |dat| # gives each hash
        dat.each do |key, value|
          if value == occupation
            return dat["name"]
          end  
        end  
    end
  end    
end



def count_contestants_by_hometown(data, hometown)
  # code here
  counter = 0
  data.each do |season, array|
    array.each do |hash|
      hash.each do |key, value|
        if value == hometown
          counter += 1
        end
      end
    end
  end
  counter        
end

def get_occupation(data, hometown)
  #  returns the occupation of the first contestant who hails from that hometown.
  data.each do |season, array|
    array.each do |hash|
      hash.find do |key, value|
        if value == hometown
          return hash["occupation"]
        end
      end
    end
  end        

end



def get_average_age_for_season(data, season)
  # return the average age of all of the contestants for that season.
  ages = []
  data[season].each do |hash|
    hash.each do |key, value|
      ages << hash["age"].to_i
    end
  end
  sum = 0
  ages.each {|x| sum += x}
  return (sum/ages.length.to_f).round
end


=begin
  {"season 19":[
      {
         "name":"Ashley Iaconetti",
         "age":"26",
         "hometown":"Great Falls, Virginia",
         "occupation":"Nanny/Freelance Journalist",
         "status":""
      },
      {
      }
      ]
     return a counter of the number of contestants who are from that hometown..
=end
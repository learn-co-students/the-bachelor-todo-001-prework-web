

def get_first_name_of_season_winner(data, season)
namelab = []
names=[]
  data.each do |seasons, array|
        if seasons == season 
    array.each do |person|
      person.each do |key, val|
        if person["status"] == "Winner"
          namelab << person["name"]
        end
      end
    end
  end
  end
namesstring = namelab.join("")
names = namesstring.split(" ")
return names[0]


end



def get_contestant_name(data, occupation)

data.each do |seasons, array|
  array.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end

end

def count_contestants_by_hometown(data, hometown)
  x=0
data.each do |seasons, array|
  array.each do |person|
    if person["hometown"] == hometown
      x+=1
    end
  end
end
return x 

end

def get_occupation(data, hometown)
data.each do |seasons, array|
  array.each do |person|
    if person["hometown"] == hometown
     return person["occupation"]
    end
  end
end

end

def get_average_age_for_season(data, season)
  ages=[]
  x=0
data.each do |seasons, array|
  if seasons == season
    array.each do |person|
      ages << person["age"].to_f
    end
  end
end
ages.each do |age|
  x = x + age
end
 
divided = x / ages.length 

divided.round


end
